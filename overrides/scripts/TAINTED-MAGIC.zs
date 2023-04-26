// Recipes for Tainted Magic

import minetweaker.item.IItemStack;

val enderEye = <minecraft:ender_eye>;
val emerald = <minecraft:emerald>;
val goldBlock = <minecraft:gold_block>;

val thaumIngot = <Thaumcraft:ItemResource:2>;
val voidMetalIngot = <Thaumcraft:ItemResource:16>;
val voidMetalBlock = <thaumicbases:voidBlock>;
val shadowMetal = <TaintedMagic:ItemMaterial:0>;
val shadowMetalNugget = <TaintedMagic:ItemMaterial:8>;

val quickSilver = <Thaumcraft:ItemResource:3>;
val quickSilverBlock = <thaumicbases:quicksilverBlock>;
val primeCharm = <Thaumcraft:ItemResource:15>;
val magicMirror = <Thaumcraft:blockMirror:0>;
val focusPortableHole = <Thaumcraft:FocusPortableHole>;
val eldritchEye = <Thaumcraft:ItemEldritchObject:0>;
val obsidianStaff = <Thaumcraft:WandRod:51>;
val thaumSword = <Thaumcraft:ItemSwordThaumium>;

val shadowMetalSword = <TaintedMagic:ItemShadowmetalSword>;
val shadowMetalPick = <TaintedMagic:ItemShadowmetalPick>;
val shadowMetalAxe = <TaintedMagic:ItemShadowmetalAxe>;
val shadowMetalShov = <TaintedMagic:ItemShadowmetalSpade>;
val shadowMetalHoe = <TaintedMagic:ItemShadowmetalHoe>;

val thaumFtrBlade = <TaintedMagic:ItemKatana:0>;
val voidMetalFtrBlade = <TaintedMagic:ItemKatana:1>;
val shadowMetalFtrBlade = <TaintedMagic:ItemKatana:2>;

val goggles = <Thaumcraft:ItemGoggles>;
val warpedGoggles = <TaintedMagic:ItemWarpedGoggles>;
val voidGoggles = <TaintedMagic:ItemVoidmetalGoggles>;

var shadowToolsArray = [shadowMetalSword, shadowMetalPick, shadowMetalAxe, shadowMetalShov, shadowMetalHoe] as IItemStack[];

# Blades
// Thaumium Fortress Blade

mods.thaumcraft.Infusion.removeRecipe(thaumFtrBlade);
mods.thaumcraft.Infusion.addRecipe("THAUMIUMKATANA",
/* Input                        */ thaumSword,
/* Ingredients                  */ [primeCharm, thaumIngot, goldBlock, emerald, quickSilverBlock, thaumIngot, obsidianStaff, thaumIngot, goldBlock, emerald, quickSilverBlock, thaumIngot],
/* Essentia                     */ "metallum 84, praecantatio 44, telum 90",
/* Output                       */ thaumFtrBlade,
/* Instability                  */ 16);
mods.thaumcraft.Research.refreshResearchRecipe("THAUMIUMKATANA");

// Void Metal Fortress Blade

mods.thaumcraft.Infusion.removeRecipe(voidMetalFtrBlade);
mods.thaumcraft.Infusion.addRecipe("VOIDMETALKATANA",
/* Input                        */ thaumFtrBlade,
/* Ingredients                  */ [primeCharm, voidMetalIngot, goldBlock, emerald, quickSilverBlock, voidMetalIngot, obsidianStaff, voidMetalIngot, goldBlock, emerald, quickSilverBlock, voidMetalIngot],
/* Essentia                     */ "alienis 24, metallum 104, praecantatio 64, telum 110, vacuos 92",
/* Output                       */ voidMetalFtrBlade,
/* Instability                  */ 20);
mods.thaumcraft.Research.refreshResearchRecipe("VOIDMETALKATANA");

// Shadow Metal Fortress Blade

mods.thaumcraft.Infusion.removeRecipe(shadowMetalFtrBlade);
mods.thaumcraft.Infusion.addRecipe("SHADOWMETALKATANA",
/* Input                        */ voidMetalFtrBlade,
/* Ingredients                  */ [primeCharm, shadowMetal, goldBlock, emerald, quickSilverBlock, shadowMetal, obsidianStaff, shadowMetal, goldBlock, emerald, quickSilverBlock, shadowMetal],
/* Essentia                     */ "metallum 124, praecantatio 84, telum 110, tenebrae 92, vacuos 32",
/* Output                       */ shadowMetalFtrBlade,
/* Instability                  */ 24);
mods.thaumcraft.Research.refreshResearchRecipe("SHADOWMETALKATANA");

# Googles
// Warped Goggles of Revealing

mods.thaumcraft.Infusion.removeRecipe(warpedGoggles);
mods.thaumcraft.Infusion.addRecipe("WARPEDGOGGLES",
/* Input                        */ goggles,
/* Ingredients                  */ [shadowMetal, primeCharm, quickSilver, enderEye],
/* Essentia                     */ "alienis 50, praecantatio 32, tenebrae 20, tutamen 16",
/* Output                       */ warpedGoggles,
/* Instability                  */ 8);
mods.thaumcraft.Research.refreshResearchRecipe("WARPEDGOGGLES");

// Void Metal Goggles of Revealing

mods.thaumcraft.Infusion.removeRecipe(voidGoggles);
mods.thaumcraft.Infusion.addRecipe("VOIDGOGGLES",
/* Input                        */ warpedGoggles,
/* Ingredients                  */ [voidMetalBlock, enderEye, magicMirror, eldritchEye],
/* Essentia                     */ "alienis 80, praecantatio 60, sensus 40, tutamen 32, vacuos 50",
/* Output                       */ voidGoggles,
/* Instability                  */ 20);
mods.thaumcraft.Research.refreshResearchRecipe("VOIDGOGGLES");

# Resources
// Shadowmetal Ingot

mods.thaumcraft.Crucible.removeRecipe(shadowMetal);
mods.thaumcraft.Crucible.addRecipe("SHADOWMETAL",
/* Output                       */ shadowMetal,
/* Input                        */ thaumIngot,
/* Essentia                     */ "alienis 2, metallum 8, perditio 3, tenebrae 12, vacuos 5");

# Tools
// Shadowmetal Sword

recipes.remove(shadowMetalSword);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ shadowMetalSword,
/* Aspects                    */ "ordo 90, perditio 140",
/* InputArray                 */ [[null, shadowMetalNugget, shadowMetal], 
                                  [shadowMetal, focusPortableHole, shadowMetalNugget],
                                  [obsidianStaff, shadowMetal, null]] );

// Shadowmetal Pickaxe

recipes.remove(shadowMetalPick);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ shadowMetalPick,
/* Aspects                    */ "ordo 80, perditio 120",
/* InputArray                 */ [[shadowMetalNugget, shadowMetal, shadowMetal], 
                                  [null, focusPortableHole, shadowMetal],
                                  [obsidianStaff, null, shadowMetalNugget]] );

// Shadowmetal Axe

recipes.remove(shadowMetalAxe);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ shadowMetalAxe,
/* Aspects                    */ "ordo 85, perditio 130",
/* InputArray                 */ [[shadowMetal, shadowMetal, shadowMetalNugget], 
                                  [shadowMetal, focusPortableHole, null],
                                  [null, obsidianStaff, null]] );

// Shadowmetal Shover

recipes.remove(shadowMetalShov);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ shadowMetalShov,
/* Aspects                    */ "ordo 75, perditio 110",
/* InputArray                 */ [[null, shadowMetalNugget, shadowMetal], 
                                  [null, focusPortableHole, shadowMetalNugget],
                                  [obsidianStaff, null, null]] );

// Shadowmetal Hoe

recipes.remove(shadowMetalHoe);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ shadowMetalHoe,
/* Aspects                    */ "ordo 70, perditio 100",
/* InputArray                 */ [[shadowMetal, shadowMetalNugget, null], 
                                  [null, focusPortableHole, null],
                                  [obsidianStaff, null, null]] );

# Research
// SHADOWMETAL
val en_text = "Once upon a time you were transmuting something in your crucible. After botching a recipe, you accidentally dropped some magic metal into the bubbling mess; to your surprise, out came a mysterious metal ingot.<BR>You have decided to name it Shadow Metal. It is extremely heavy and seems very durable, but it is highly unstable and difficult to craft with. You will likely have to use it alongside another magical metal.<BR>You place your ear against this strange substance and hear faint whispers. Are you going mad? Who knows";
mods.thaumcraft.Research.clearPages("SHADOWMETAL");
mods.thaumcraft.Research.addPage("SHADOWMETAL", "tnmx.tm.shadowmetal_1");
game.setLocalization("tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tnmx.tm.shadowmetal_1", en_text);
mods.thaumcraft.Research.addCruciblePage("SHADOWMETAL", shadowMetal);
for i, el_shadowTool in shadowToolsArray {
    mods.thaumcraft.Research.addArcanePage("SHADOWMETAL", el_shadowTool); }
