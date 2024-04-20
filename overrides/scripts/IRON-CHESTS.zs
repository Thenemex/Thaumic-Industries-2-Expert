// Recipes for IronChests

# Removing all recipes
recipes.remove(<IronChest:BlockIronChest:0>);
recipes.remove(<IronChest:BlockIronChest:1>);
recipes.remove(<IronChest:BlockIronChest:2>);
recipes.remove(<IronChest:BlockIronChest:3>);
recipes.remove(<IronChest:BlockIronChest:4>);
recipes.remove(<IronChest:BlockIronChest:5>);
recipes.remove(<IronChest:BlockIronChest:6>);
recipes.remove(<IronChest:BlockIronChest:7>);
recipes.remove(<IronChest:diamondCrystalUpgrade>);
recipes.remove(<IronChest:diamondObsidianUpgrade>);
recipes.remove(<IronChest:goldDiamondUpgrade>);
recipes.remove(<IronChest:woodCopperUpgrade>);
recipes.remove(<IronChest:woodIronUpgrade>);
recipes.remove(<IronChest:copperIronUpgrade>);
recipes.remove(<IronChest:silverGoldUpgrade>);
recipes.remove(<IronChest:copperSilverUpgrade>);
recipes.remove(<IronChest:ironGoldUpgrade>);

# Adding a new tab in the Thaumonomicon
mods.thaumcraft.Research.addTab("IRONCHEST", "ironchest", "textures/items/woodIronUpgrade.png");
game.setLocalization("tc.research_category.IRONCHEST", "Iron Chests");

# Adding a craft & research for the Iron Chest
// Adding the research (English + French)
mods.thaumcraft.Research.addResearch("WOODTOIRON",
/* TabKey                         */ "IRONCHEST",
/* AspectList                     */ "fabrico 4, ordo 6, metallum 10, vacuos 5",
/* X                              */ 0,
/* Y                              */ 0,
/* Complexity                     */ 1,
/* ItemStack                      */ <IronChest:BlockIronChest:0>);
game.setLocalization("tc.research_name.WOODTOIRON", "Iron Chest");
game.setLocalization("fr_FR", "tc.research_name.WOODTOIRON", "Coffre en Fer");
game.setLocalization("tc.research_text.WOODTOIRON", "Double the space!");
game.setLocalization("fr_FR", "tc.research_text.WOODTOIRON", "Le double de place!");
mods.thaumcraft.Research.addPage("WOODTOIRON", "tnmx.ic.woodtoiron_1");
game.setLocalization("tnmx.ic.woodtoiron_1", "After some researchs and experiments with wood and metal, you found that the mundane chest can be enhanced to contain more items by covering the inside with a thin thaumium layer, and reinforcing the outside with a strong iron plating. The result is an iron-looking chest that can contains the same amount as a double wood chest.<BR>You noticed that - because of the strong outside metal plating, this new chest cannot merge with another chest like the wood chest would do.");
game.setLocalization("fr_FR", "tnmx.ic.woodtoiron_1", "A la suite de plusieurs recherches et expériences en utilisant bois et metaux, vous remarquez une faille dans la structure du coffre en bois. Celui-ci peut être amélioré pour contenir davantage d'objets en recouvrant l'intérieur d'une fine couche de thaumium, et en renforcant l'extérieur avec un blindage de fer renforcé. Le résultat est un semblant de coffre en fer qui peut contenir autant d'objets d'un double coffre en bois.<BR> Du à son blindage extérieur, ce nouveau coffre ne peut fusionner avec un autre coffre comme le ferait un coffre en bois.");
// Iron Chest (1 Chest + 1 Thaumium + 6 Iron + 1 Iron block
mods.thaumcraft.Arcane.addShaped("WOODTOIRON",
/* Output                     */ <IronChest:BlockIronChest:0>,
/* Aspects                    */ "aer 5, terra 12, ordo 20",
/* InputArray                 */ [[<minecraft:iron_ingot>, <Thaumcraft:ItemResource:2>, <minecraft:iron_ingot>], 
                                  [<minecraft:iron_ingot>, <minecraft:chest>, <minecraft:iron_ingot>],
                                  [<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>]] );
mods.thaumcraft.Research.addArcanePage("WOODTOIRON", <IronChest:BlockIronChest:0>);
// Adding the Thaumium as prereqs for the Iron Chest
mods.thaumcraft.Research.addPrereq("WOODTOIRON", "THAUMIUM", true);

