// Expert recipes for Minecraft Vanilla, with brand new TC tab
import minetweaker.item.IItemStack;

# Adding a new tab in the Thaumonomicon
mods.thaumcraft.Research.addTab("VANILLA", "minecraft", "textures/blocks/crafting_table_front.png");
game.setLocalization("tc.research_category.VANILLA", "Minecraft");

# Adding an auto-unlock research for showing the vanilla crafts changes
// Adding the research
mods.thaumcraft.Research.addResearch("EXPERTCHANGES",
/* TabKey                         */ "VANILLA",
/* AspectList                     */ "",
/* X                              */ 0,
/* Y                              */ 0,
/* Complexity                     */ 0,
/* ItemStack                      */ <minecraft:book>);
game.setLocalization("tc.research_name.EXPERTCHANGES", "Expert Changes");
game.setLocalization("tc.research_text.EXPERTCHANGES", "It's gonna be a tough journey");
// Prereqs
mods.thaumcraft.Research.addSibling("THAUMONOMICON", "EXPERTCHANGES");
mods.thaumcraft.Research.setRound("EXPERTCHANGES", true);
mods.thaumcraft.Research.setAutoUnlock("EXPERTCHANGES", true);
mods.thaumcraft.Research.addPage("EXPERTCHANGES", "tnmx.ic.expertchanges_1");
game.setLocalization("tnmx.ic.expertchanges_1", "You noticed after exploring the world a bit, that the rules aren't the same down here ... <LINE> You will found in these pages the crafts that have been edited.");

# Editing item crafts
// 1 Wood -> 2 Planks
var logsArray = [<minecraft:log:0>, <minecraft:log:1>, <minecraft:log:2>, <minecraft:log:3>, <minecraft:log2:0>, <minecraft:log2:1>, <Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMagicalLog:1>] as IItemStack[];
var planksArray = [<minecraft:planks:0>, <minecraft:planks:1>, <minecraft:planks:2>, <minecraft:planks:3>, <minecraft:planks:4>,<minecraft:planks:5>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:7>] as IItemStack[];
for i, el_plank in planksArray {
    var log = logsArray[i];
    recipes.remove(el_plank);
    recipes.addShapeless(el_plank * 2, [log]); }
// Adding the craft page of planks to the research
mods.thaumcraft.Research.addCraftingPage("EXPERTCHANGES", <minecraft:planks>);
// 2 Planks -> 2 Sticks
recipes.remove(<minecraft:stick>);
recipes.addShaped(<minecraft:stick> * 2, [[<ore:plankWood>, null],
                                          [<ore:plankWood>, null]]);
// Adding the craft page of wooden sticks to the research
mods.thaumcraft.Research.addCraftingPage("EXPERTCHANGES", <minecraft:stick>);
