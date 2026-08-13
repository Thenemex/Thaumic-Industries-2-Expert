#!/usr/bin/env node
// build-prism.js - assemble a GTNH-style Prism Launcher instance for TAE (lwjgl3ify + Java 25 baked).
//
// The pack (manifest.json + overrides) has no mod jars in the repo: CurseForge serves them at install
// time. This script takes the jars + config from an existing Prism instance created from the pack
// (CF import applies the manifest + overrides automatically), and produces a self-contained Prism
// instance zip in the same layout GTNH ships (see GTNH "Multi_mc_downloads" zips):
//
//   <Instance Name>/
//   |- .minecraft/          mods, config, scripts, resourcepacks, ...
//   |- instance.cfg         baked Java 25 JVM args + 4-8G memory
//   |- mmc-pack.json        org.lwjgl3 + net.minecraft + net.minecraftforge + lwjgl3ify components
//   |- patches/             the 5 lwjgl3ify patch files (JVM args, RFB main class, libs)
//   `- libraries/           lwjgl3ify-<v>-forgePatches.jar (local, MMC-hint)
//
// The lwjgl3ify skeleton is downloaded from the official lwjgl3ify GitHub release matching the
// lwjgl3ify version present in the source instance mods/. Java 25 is baked:
// patches/net.minecraft.json compatibleJavaMajors is narrowed to [25, 26] and instance.cfg carries
// -XX:+UnlockExperimentalVMOptions -XX:+UseCompactObjectHeaders (reduced memory footprint) - Prism
// auto-installs/selects a Java 25 runtime on first launch.
//
// usage: node scripts/build-prism.js [--source <prism-instance-dir>] [--out <dir>]
//   --source defaults to $TAE_PRISM_SOURCE or ~/.local/share/PrismLauncher/instances/TCIe.3.1.1.1.1
//   --out    defaults to dist/
// requires: node 20+, and either zip, or bsdtar (Windows: tar.exe -a), for archiving.
const fs = require("fs");
const path = require("path");
const os = require("os");
const { execFileSync } = require("child_process");
const crypto = require("crypto");

const REPO = path.resolve(__dirname, "..");
const DEFAULT_SOURCE = path.join(os.homedir(), ".local/share/PrismLauncher/instances/TCIe.3.1.1.1.1");
const argv = process.argv.slice(2);
const opt = (flag, fallback) => { const i = argv.indexOf(flag); return i >= 0 ? argv[i + 1] : fallback; };
const SOURCE = opt("--source", process.env.TAE_PRISM_SOURCE || DEFAULT_SOURCE);
const OUT = path.resolve(opt("--out", "dist"));
const WORK = path.join(REPO, ".build-prism");
// runtime-only / per-user dirs never shipped in a distribution instance
const EXCLUDE = /^(saves|logs|screenshots|backups|crash-reports|cachedImages|server-resource-packs|natives|hotbar|TCNodeTracker|resourcepacks[/].+[.]zip)$/;

const log = (m) => console.log(m);
const fail = (m) => { console.error("ERROR: " + m); process.exit(1); };

function sh(cmd, cwd) {
  return execFileSync(cmd.shift(), cmd, { cwd, encoding: "utf8", stdio: ["ignore", "pipe", "pipe"] });
}
function httpGet(url, dest, retries = 3) {
  for (let i = 0; i < retries; i++) {
    try {
      execFileSync("curl", ["-sL", "-f", "--retry", "2", "-o", dest, url], { stdio: "ignore" });
      return;
    } catch (e) {
      if (i === retries - 1) fail("download failed: " + url + " -> " + dest);
      log("  retry " + (i + 1) + " for " + url);
    }
  }
}
function extract(zip, dest) {
  try { sh(["unzip", "-qq", "-o", zip, "-d", dest]); return; } catch (e) { /* fallthrough */ }
  try { fs.mkdirSync(dest, { recursive: true }); sh(["tar", "-xf", zip, "-C", dest]); return; } catch (e) { /* fallthrough */ }
  fail("no unzip or tar (bsdtar) available to extract " + zip);
}
function makeZip(zipPath, cwd, dir) {
  try { sh(["zip", "-qr", zipPath, dir], cwd); return; } catch (e) { /* fallthrough */ }
  try { sh(["tar", "-a", "-cf", zipPath, dir], cwd); return; } catch (e) { /* fallthrough */ }
  fail("no zip or bsdtar available to create " + zipPath);
}
function copyTree(src, dst, rel) {
  rel = rel || "";
  fs.mkdirSync(dst, { recursive: true });
  for (const e of fs.readdirSync(src, { withFileTypes: true })) {
    const r = rel ? rel + "/" + e.name : e.name;
    if (EXCLUDE.test(r)) continue;
    const s = path.join(src, e.name), d = path.join(dst, e.name);
    if (e.isDirectory()) copyTree(s, d, r);
    else fs.copyFileSync(s, d);
  }
}
function sha256(p) {
  return crypto.createHash("sha256").update(fs.readFileSync(p)).digest("hex");
}
function jsonRead(p) { return JSON.parse(fs.readFileSync(p, "utf8")); }

// ---- 1. pack identity ----
const manifest = jsonRead(path.join(REPO, "manifest.json"));
const version = manifest.version;
const instanceName = manifest.name || "Thaumic Industries - Java 25 Edition";
log("pack: " + instanceName + " " + version);

// ---- 2. source instance ----
const srcMinecraft = path.join(SOURCE, "minecraft");
if (!fs.existsSync(srcMinecraft)) fail("source instance not found: " + SOURCE + " (pass --source)");
const srcMods = fs.readdirSync(path.join(srcMinecraft, "mods"));
log("source: " + SOURCE + " (" + srcMods.length + " mods)");

// ---- 3. assemble ----
fs.rmSync(WORK, { recursive: true, force: true });
const inst = path.join(WORK, instanceName);
log("assembling " + inst);
copyTree(srcMinecraft, path.join(inst, "minecraft"));

// ---- 4. lwjgl3ify skeleton (match the lwjgl3ify version shipped in mods) ----
const lwj = srcMods.find((n) => /^lwjgl3ify-[0-9]+[.][0-9]+[.][0-9]+[.]jar$/.test(n));
if (!lwj) fail("no lwjgl3ify-<version>.jar in source instance mods/");
const lwjVer = lwj.match(/lwjgl3ify-([0-9]+[.][0-9]+[.][0-9]+)[.]jar/)[1];
log("lwjgl3ify " + lwjVer + " -> fetching Prism skeleton");
fs.mkdirSync(path.join(WORK, "dl"), { recursive: true });
const mmcZip = path.join(WORK, "dl", "lwjgl3ify-" + lwjVer + "-multimc.zip");
httpGet("https://github.com/GTNewHorizons/lwjgl3ify/releases/download/" + lwjVer + "/lwjgl3ify-" + lwjVer + "-multimc.zip", mmcZip);
extract(mmcZip, inst);
for (const f of ["mmc-pack.json", "patches", "libraries"]) {
  if (!fs.existsSync(path.join(inst, f))) fail("lwjgl3ify " + lwjVer + " multimc zip missing " + f + "/ - wrong release?");
}

// ---- 5. bake Java 25 ----
const mcPatch = path.join(inst, "patches", "net.minecraft.json");
const patch = jsonRead(mcPatch);
patch.compatibleJavaMajors = [25, 26];
fs.writeFileSync(mcPatch, JSON.stringify(patch, null, 2) + String.fromCharCode(10));
log("compatibleJavaMajors -> [25, 26]");

// ---- 6. instance.cfg ----
const cfgLines = [
  "InstanceType=OneSix",
  "name=" + instanceName,
  "notes=Java 25 + lwjgl3ify pre-configured. Memory / JVM args tunable in instance settings.",
  "iconKey=tcie_icon",
  "JoinServerOnLaunch=false",
  "OverrideJavaLocation=false",
  "OverrideMemory=true",
  "MinMemAlloc=4096",
  "MaxMemAlloc=8192",
  "OverrideJavaArgs=true",
  "JavaArgs=-XX:+UnlockExperimentalVMOptions -XX:+UseCompactObjectHeaders -XX:+UseG1GC -XX:MaxGCPauseMillis=4 -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:+PerfDisableSharedMem",
  "OverrideCommands=false",
  "OverrideConsole=false",
  "OverrideGameTime=false",
  "OverrideNativeWorkarounds=false",
  "OverrideWindow=false",
  "",
];
fs.writeFileSync(path.join(inst, "instance.cfg"), cfgLines.join(String.fromCharCode(10)));

// ---- 7. icon (GTNH ships gtnh_icon.png + iconKey; we ship the CF profile image) ----
const profile = path.join(SOURCE, "profileImage");
if (fs.existsSync(profile)) {
  const png = fs.readdirSync(profile).find((f) => f.endsWith(".png"));
  if (png) fs.copyFileSync(path.join(profile, png), path.join(inst, "tcie_icon.png"));
}

// ---- 8. server list (drop the entry or edit below) ----
fs.writeFileSync(path.join(inst, "minecraft", "servers.json"),
  JSON.stringify([{ name: "Valhalla TCIe", address: "tcie.valhallamc.io" }], null, 2));

// ---- 9. zip ----
fs.mkdirSync(OUT, { recursive: true });
const zipName = "TCIe_" + version + "_Java_25.zip";
const zipPath = path.join(OUT, zipName);
fs.rmSync(zipPath, { force: true });
log("zipping " + zipPath);
makeZip(zipPath, WORK, instanceName);

// ---- 10. report ----
const jarCount = fs.readdirSync(path.join(inst, "minecraft", "mods")).length;
const size = (fs.statSync(zipPath).size / 1048576).toFixed(1);
log("");
log("done: " + zipPath + " (" + size + " MB)");
log("  instance: " + instanceName + " " + version);
log("  mods: " + jarCount + " | lwjgl3ify: " + lwjVer + " | Java: 25");
log("  sha256: " + sha256(zipPath));
log("");
log("share: drag the zip into the Prism Launcher window. Prism auto-installs Java 25 on first launch.");