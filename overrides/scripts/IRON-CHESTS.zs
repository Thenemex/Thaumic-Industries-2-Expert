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
game.setLocalization("fr_FR", "tnmx.ic.woodtoiron_1", "A la suite de plusieurs recherches et experiences en utilisant bois et metaux, vous remarquez une faille dans la structure du coffre en bois. Celui-ci peut être ameliore pour contenir davantage d'objets en recouvrant l'interieur d'une fine couche de thaumium, et en renforcant l'exterieur avec un blindage de fer renforce . Le resultat est un semblant de coffre en fer qui peut contenir autant d'objets d'un double coffre en bois.<BR> Du a son blindage exterieur, ce nouveau coffre ne peut plus fusionner avec un autre coffre comme le ferait un coffre en bois.");
// Iron Chest (1 Chest + 1 Thaumium + 6 Iron + 1 Iron block
mods.thaumcraft.Arcane.addShaped("WOODTOIRON",
/* Output                     */ <IronChest:BlockIronChest:0>,
/* Aspects                    */ "aer 5, terra 12, ordo 20",
/* InputArray                 */ [[<minecraft:iron_ingot>, <Thaumcraft:ItemResource:2>, <minecraft:iron_ingot>], 
                                  [<minecraft:iron_ingot>, <minecraft:chest>, <minecraft:iron_ingot>],
                                  [<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>]] );
mods.thaumcraft.Research.addArcanePage("WOODTOIRON", <IronChest:BlockIronChest:0>);
// Setting aspects
mods.thaumcraft.Aspects.set(<IronChest:BlockIronChest:0>, "arbor 4, metallum 20, ordo 3, vacuos 8");
// Prereqs (Thaumium)
mods.thaumcraft.Research.addPrereq("WOODTOIRON", "THAUMIUM", true);

# Adding a craft & research for the Copper Chest
// Adding the research (English + French)
mods.thaumcraft.Research.addResearch("WOODTOCOPPER",
/* TabKey                         */ "IRONCHEST",
/* AspectList                     */ "fabrico 3, metallum 15, ordo 3, permutatio 6, vacuos 6",
/* X                              */ 0,
/* Y                              */ -2,
/* Complexity                     */ 0,
/* ItemStack                      */ <IronChest:BlockIronChest:3>);
game.setLocalization("tc.research_name.WOODTOCOPPER", "Copper Chest");
game.setLocalization("fr_FR", "tc.research_name.WOODTOCOPPER", "Coffre en Cuivre");
game.setLocalization("tc.research_text.WOODTOCOPPER", "At least we're trying ...");
game.setLocalization("fr_FR", "tc.research_text.WOODTOCOPPER", "Ce n'est pas une reussite ...");
mods.thaumcraft.Research.addPage("WOODTOCOPPER", "tnmx.ic.woodtocopper_1");
game.setLocalization("tnmx.ic.woodtocopper_1", "Once upon a time, your cat pushed a magic chest and all the empty jars around into a boiling crucible while his fellow master was trying to transmute some quicksilver into copper... Then the chest started to eat some of the essentia in there. What came out was a chest with a bit less than double the space of the hungry chest. <BR>You immediately took some notes about this experience, hoping that this unexpected discovery could lead you to more.");
game.setLocalization("fr_FR", "tnmx.ic.woodtocopper_1", "Un beau jour, votre chat durant un exces de folie fut tomber un coffre magique et toutes les fioles vides environnantes dans un creuset mijotant, pendant que son maitre essayait de transmuter du vif-argent en cuivre... Le coffre commenca ainsi a avaler une partie de l'essentia ; ce qui sortit ensuite du creuset fut un coffre avec un peu moins du double de stockage d'un coffre classique. <BR> Vous avez immediatement pris des notes sur cette experience, en esperant que cette recette suprise vous devoile de nouvelles possibilites.");
// Copper Chest (1 Hungry Chest + 25 Metallum)
mods.thaumcraft.Crucible.addRecipe("WOODTOCOPPER",
/* Output                       */ <IronChest:BlockIronChest:3>,
/* Input                        */ <Thaumcraft:blockChestHungry>,
/* Aspects                      */ "metallum 25, permutatio 10, praecantatio 6, ordo 5, vacuos 8" );
mods.thaumcraft.Research.addCruciblePage("WOODTOCOPPER", <IronChest:BlockIronChest:3>);
// Setting aspects
mods.thaumcraft.Aspects.set(<IronChest:BlockIronChest:3>, "metallum 15, ordo 2, permutatio 5, vacuos 6");
// Prereqs (Iron Chest + Hungry Chest)
mods.thaumcraft.Research.addPrereq("WOODTOCOPPER", "WOODTOIRON", true);
mods.thaumcraft.Research.addPrereq("WOODTOCOPPER", "HUNGRYCHEST", true);
mods.thaumcraft.Research.setSecondary("WOODTOCOPPER", true);
mods.thaumcraft.Research.setConcealed("WOODTOCOPPER", true);

# Adding a craft & research for the Gold Chest
// Adding the research (English + French)
mods.thaumcraft.Research.addResearch("IRONTOGOLD",
/* TabKey                         */ "IRONCHEST",
/* AspectList                     */ "fabrico 4, lucrum 5, metallum 6, ordo 3, vacuos 10",
/* X                              */ 3,
/* Y                              */ -1,
/* Complexity                     */ 2,
/* ItemStack                      */ <IronChest:BlockIronChest:1>);
game.setLocalization("tc.research_name.IRONTOGOLD", "Gold Chest");
game.setLocalization("fr_FR", "tc.research_name.IRONTOGOLD", "Coffre en Or");
game.setLocalization("tc.research_text.IRONTOGOLD", "Oh baby a triple!");
mods.thaumcraft.Research.addPage("IRONTOGOLD", "tnmx.ic.irontogold_1");
game.setLocalization("tnmx.ic.irontogold_1", "By taking your iron chest and trying to use a more easy-to-work metal than iron - the precious gold, you reached an even more interesting result. This chest thanks to the properties of gold and magic, is three times more bigger than a mundane chest.");
game.setLocalization("fr_FR", "tnmx.ic.irontogold_1", "En experimentant avec votre coffre en fer et un metal davantage malleable - l'or, vous avez atteint un nouveau stade encore plus interessant. Ce coffre grace aux proprietes speciales de l'or, est trois fois plus grand qu'un coffre standard.");
// Gold Chest (1 Chest + 1 Thaumium + 6 Gold + 1 Iron Gold)
mods.thaumcraft.Arcane.addShaped("IRONTOGOLD",
/* Output                     */ <IronChest:BlockIronChest:1>,
/* Aspects                    */ "aer 12, terra 24, ordo 40",
/* InputArray                 */ [[<minecraft:gold_ingot>, <Thaumcraft:ItemResource:2>, <minecraft:gold_ingot>], 
                                  [<minecraft:gold_ingot>, <IronChest:BlockIronChest:0>, <minecraft:gold_ingot>],
                                  [<minecraft:gold_ingot>, <minecraft:gold_block>, <minecraft:gold_ingot>]] );
mods.thaumcraft.Research.addArcanePage("IRONTOGOLD", <IronChest:BlockIronChest:1>);
// Setting aspects
mods.thaumcraft.Aspects.set(<IronChest:BlockIronChest:1>, "lucrum 5, metallum 18, ordo 4, vacuos 10");
// Prereqs (Iron Chest + Copper Chest)
mods.thaumcraft.Research.addPrereq("IRONTOGOLD", "WOODTOIRON", false);
mods.thaumcraft.Research.addPrereq("IRONTOGOLD", "WOODTOCOPPER", false);
mods.thaumcraft.Research.setConcealed("IRONTOGOLD", true);

# Adding a craft & research for the Silver Chest
// Adding the research (English + French)
mods.thaumcraft.Research.addResearch("COPPERTOSILVER",
/* TabKey                         */ "IRONCHEST",
/* AspectList                     */ "lucrum 6, metallum 20, terra 6, permutatio 10, vacuos 10",
/* X                              */ 3,
/* Y                              */ -3,
/* Complexity                     */ 0,
/* ItemStack                      */ <IronChest:BlockIronChest:4>);
game.setLocalization("tc.research_name.COPPERTOSILVER", "Silver Chest");
game.setLocalization("fr_FR", "tc.research_name.COPPERTOSILVER", "Coffre en Argent");
game.setLocalization("tc.research_text.COPPERTOSILVER", "An alternative path");
game.setLocalization("fr_FR", "tc.research_text.COPPERTOSILVER", "Une autre voie");
mods.thaumcraft.Research.addPage("COPPERTOSILVER", "tnmx.ic.coppertosilver_1");
game.setLocalization("tnmx.ic.coppertosilver_1", "After some analysis on the gray and shiny ores you mined inside the caves, you found that you could extend the internal size of the copper chest by bathing him into more metal essentia. <BR> Once dry, you just seen that the chest turned out gray, shiny and with some more storage");
game.setLocalization("tnmx.ic.coppertosilver_1", "Apres une analyse des minerais gris et brillants que vous avez mines en souterrain ; il devient clair que la structure interne du coffre en cuivre peut etre poussee plus loin en la baignant dans encore plus d'essentia de metaux. <BR> Une fois sec, vous remarquez que le coffre a change de couleur et est devenu beaucoup plus brillant, avec davantage de place libre");
// Silver Chest (1 Copper Chest + 40 Metallum)
mods.thaumcraft.Crucible.addRecipe("COPPERTOSILVER",
/* Output                       */ <IronChest:BlockIronChest:4>,
/* Input                        */ <IronChest:BlockIronChest:3>,
/* Aspects                      */ "lucrum 8, metallum 40, permutatio 15, terra 10, vacuos 12, vitreus 6");
mods.thaumcraft.Research.addCruciblePage("COPPERTOSILVER", <IronChest:BlockIronChest:4>);
// Prereqs (Copper Chest)
mods.thaumcraft.Research.addPrereq("COPPERTOSILVER", "WOODTOCOPPER", false);
mods.thaumcraft.Research.setConcealed("COPPERTOSILVER", true);
