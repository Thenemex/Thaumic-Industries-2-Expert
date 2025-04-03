// Expert recipes for IronChests, with brand new TC tab.

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
game.setLocalization("fr_FR", "tnmx.ic.woodtoiron_1", "A la suite de plusieurs recherches et experiences en utilisant bois et metaux, vous remarquez une faille dans la structure du coffre en bois. Celui-ci peut etre ameliore pour contenir davantage d'objets en recouvrant l'interieur d'une fine couche de thaumium, et en renforcant l'exterieur avec un blindage de fer renforce . Le resultat est un semblant de coffre en fer qui peut contenir autant d'objets d'un double coffre en bois.<BR> Du a son blindage exterieur, ce nouveau coffre ne peut plus fusionner avec un autre coffre comme le ferait un coffre en bois.");
// Iron Chest (1 Chest + 1 Thaumium + 6 Iron + 1 Iron block
mods.thaumcraft.Arcane.addShaped("WOODTOIRON",
/* Output                     */ <IronChest:BlockIronChest:0>,
/* Aspects                    */ "ordo 15, terra 22, aer 6",
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
/* Aspects                      */ "metallum 15, permutatio 6, praecantatio 3, ordo 5, vacuos 8" );
mods.thaumcraft.Research.addCruciblePage("WOODTOCOPPER", <IronChest:BlockIronChest:3>);
// Setting aspects
mods.thaumcraft.Aspects.set(<IronChest:BlockIronChest:3>, "metallum 10, ordo 2, permutatio 5, vacuos 6");
// Prereqs (Iron Chest + Hungry Chest)
mods.thaumcraft.Research.addPrereq("WOODTOCOPPER", "WOODTOIRON", true);
mods.thaumcraft.Research.addPrereq("WOODTOCOPPER", "HUNGRYCHEST", true);
mods.thaumcraft.Research.setSecondary("WOODTOCOPPER", true);
mods.thaumcraft.Research.setConcealed("WOODTOCOPPER", true);

# Adding a craft & research for the Silver Chest
// Adding the research (English + French)
mods.thaumcraft.Research.addResearch("COPPERTOSILVER",
/* TabKey                         */ "IRONCHEST",
/* AspectList                     */ "lucrum 6, metallum 20, terra 6, permutatio 5, vacuos 10",
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
game.setLocalization("fr_FR", "tnmx.ic.coppertosilver_1", "Apres une analyse des minerais gris et brillants que vous avez mines en souterrain ; il devient clair que la structure interne du coffre en cuivre peut etre poussee plus loin en la baignant dans encore plus d'essentia de metaux. <BR> Une fois sec, vous remarquez que le coffre a change de couleur et est devenu beaucoup plus brillant, avec davantage de place libre");
// Silver Chest (1 Copper Chest + 40 Metallum)
mods.thaumcraft.Crucible.addRecipe("COPPERTOSILVER",
/* Output                       */ <IronChest:BlockIronChest:4>,
/* Input                        */ <IronChest:BlockIronChest:3>,
/* Aspects                      */ "lucrum 8, metallum 25, permutatio 15, terra 4, vacuos 15, vitreus 6");
mods.thaumcraft.Research.addCruciblePage("COPPERTOSILVER", <IronChest:BlockIronChest:4>);
// Prereqs (Copper Chest)
mods.thaumcraft.Research.addPrereq("COPPERTOSILVER", "WOODTOCOPPER", false);
mods.thaumcraft.Research.setConcealed("COPPERTOSILVER", true);

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
/* Aspects                    */ "ordo 24, terra 40, aer 10",
/* InputArray                 */ [[<minecraft:gold_ingot>, <Thaumcraft:ItemResource:2>, <minecraft:gold_ingot>],
                                  [<minecraft:gold_ingot>, <IronChest:BlockIronChest:0>, <minecraft:gold_ingot>],
                                  [<minecraft:gold_ingot>, <minecraft:gold_block>, <minecraft:gold_ingot>]] );
mods.thaumcraft.Research.addArcanePage("IRONTOGOLD", <IronChest:BlockIronChest:1>);
mods.thaumcraft.Crucible.addRecipe("IRONTOGOLD",
/* OutputStack                  */ <IronChest:BlockIronChest:1>,
/* InputStack                   */ <IronChest:BlockIronChest:4>,
/* AspectString                 */ "lucrum 10, metallum 20, vacuos 5");
mods.thaumcraft.Research.addCruciblePage("IRONTOGOLD", <IronChest:BlockIronChest:1>);
// Setting aspects
mods.thaumcraft.Aspects.set(<IronChest:BlockIronChest:1>, "lucrum 5, metallum 18, ordo 4, vacuos 10");
// Prereqs (Iron Chest + Copper Chest)
mods.thaumcraft.Research.addPrereq("IRONTOGOLD", "WOODTOIRON", false);
mods.thaumcraft.Research.addPrereq("IRONTOGOLD", "COPPERTOSILVER", false);
mods.thaumcraft.Research.setConcealed("IRONTOGOLD", false);

# Adding a craft & research for the black chest
mods.thaumcraft.Research.addResearch("GOLDTOBLACK",
/* TabKey                         */ "IRONCHEST",
/* AspectList                     */ "alienis 40, cognitio 35, fabrico 10, lucrum 20, metallum 30, permutatio 10, praecantatio 20, tenebrae 25, vacuos 15",
/* X                              */ 6,
/* Y                              */ -2,
/* Complexity                     */ 5,
/* ItemStack                      */ <IronChest:BlockIronChest:6>);
game.setLocalization("tc.research_name.GOLDTOBLACK", "The Black Chest");
game.setLocalization("fr_FR", "tc.research_name.GOLDTOBLACK", "Le Coffre Noir");
game.setLocalization("tc.research_text.GOLDTOBLACK", "A vision through the deep dark");
game.setLocalization("fr_FR", "tc.research_text.GOLDTOBLACK", "Une vision a travers le neant");
mods.thaumcraft.Research.addPage("GOLDTOBLACK", "tnmx.ic.goldtoblack_1");
mods.thaumcraft.Research.addPage("GOLDTOBLACK", "tnmx.ic.goldtoblack_2");
game.setLocalization("tnmx.ic.goldtoblack_1", "The voices in your head kept hurting until you finally let them take the control for a few seconds. All your papers were scattered and written with insanities about the deep void and it's resonating call ... You quickly hide all of this in your side chest to try to forget about this experience, but you are still seeing those symbols and bloody writings. <BR> After a nightmare, you woke up all sweating and you rushed to your chest to have a look at the papers inside from yesterday.");
game.setLocalization("tnmx.ic.goldtoblack_2", "They were all bathing in flux, and one of them got it's writing changed to a drawing of a dark chest ; even the light of a nitor on your research table can't light this drawing, like it was made of something else, something from the void ... <LINE>");
// Black Chest (1 Gold Chest + 1 Focus : Portable Hole + 1 Thaumium + 6 Void Metal + 4 Obsidian Tiles)
mods.thaumcraft.Infusion.addRecipe("GOLDTOBLACK",
/* Input                        */ <IronChest:BlockIronChest:1>,
/* Ingredients                  */ [<Thaumcraft:ItemResource:2>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>,  <Thaumcraft:ItemResource:16>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:FocusPortableHole>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:blockCosmeticSolid:1>],
/* Essentia                     */ "alienis 12, metallum 50, fabrico 30, lucrum 25, tenebrae 22, vacuos 45",
/* Output                       */ <IronChest:BlockIronChest:6>,
/* Instability                  */ 10);
mods.thaumcraft.Research.addInfusionPage("GOLDTOBLACK", <IronChest:BlockIronChest:6>);
mods.thaumcraft.Research.addPage("GOLDTOBLACK", "tnmx.ic.goldtoblack_4");
game.setLocalization("tnmx.ic.goldtoblack_4", "You quickly realised a chest of this size will be super useful for tidying all your mess, but you will have to hide it so your mates can't discover what it really is. <BR> You are sure you'll find a way to change the external appearance of the Black Chest to keep the irradiating warp and it's irresistible call of the void contained within it's walls ...");
// Setting aspects
mods.thaumcraft.Aspects.set(<IronChest:BlockIronChest:6>, "alienis 6, lucrum 8, metallum 24, tenebrae 10, vacuos 15");
// Prereqs (Gold Chest + Silver Chest + Focus : Portable Hole + Void Metal)
mods.thaumcraft.Research.addPrereq("GOLDTOBLACK", "IRONTOGOLD", false);
mods.thaumcraft.Research.addPrereq("GOLDTOBLACK", "COPPERTOSILVER", false);
mods.thaumcraft.Research.addPrereq("GOLDTOBLACK", "FOCUSPORTABLEHOLE", true);
mods.thaumcraft.Research.addPrereq("GOLDTOBLACK", "VOIDMETAL", true);
mods.thaumcraft.Research.setSpikey("GOLDTOBLACK", true);
// Renaming items + Warping
mods.thaumcraft.Warp.addToResearch("GOLDTOBLACK", 5);
<IronChest:BlockIronChest:6>.displayName = "Black Chest";
<IronChest:BlockIronChest:6>.addTooltip(format.red("It weights a dead whale ..."));

# Adding a craft & research for Diamond chest
mods.thaumcraft.Research.addResearch("BLACKTODIAMOND",
/* TabKey                         */ "IRONCHEST",
/* AspectList                     */ "lucrum 9, ordo 6, metallum 3, vitreus 9",
/* X                              */ 8,
/* Y                              */ -3,
/* Complexity                     */ 0,
/* ItemStack                      */ <IronChest:BlockIronChest:2>);
game.setLocalization("tc.research_name.BLACKTODIAMOND", "Concealement : Diamond");
game.setLocalization("fr_FR", "tc.research_name.BLACKTODIAMOND", "Camouflage : Diamant");
game.setLocalization("tc.research_text.BLACKTODIAMOND", "My precious ...");
game.setLocalization("fr_FR", "tc.research_text.BLACKTODIAMOND", "Mon precieux ...");
mods.thaumcraft.Research.addPage("BLACKTODIAMOND", "tnmx.ic.blacktodiamond_1");
game.setLocalization("tnmx.ic.blacktodiamond_1", "It would not be possible to count all the diamonds and precious stones that have been wasted in the process ... <BR> But there it is ! You succeeded in concealing and shutting the mouth of this warped void from the Black chest, into something more usual.");
// Diamond Chest (1 Black Chest + 4 Diamonds + 3 Mirrored Glass + 1 Primal Charm
mods.thaumcraft.Arcane.addShaped("BLACKTODIAMOND",
/* Output                     */ <IronChest:BlockIronChest:2>,
/* Aspects                    */ "aer 10, terra 25, ordo 18",
/* InputArray                 */ [[<minecraft:diamond>, <Thaumcraft:ItemResource:10>, <minecraft:diamond>],
                                  [<Thaumcraft:ItemResource:10>, <IronChest:BlockIronChest:6>, <Thaumcraft:ItemResource:10>],
                                  [<minecraft:diamond>, <Thaumcraft:ItemResource:15>, <minecraft:diamond>]] );
mods.thaumcraft.Research.addArcanePage("BLACKTODIAMOND", <IronChest:BlockIronChest:2>);
// Setting aspects
mods.thaumcraft.Aspects.set(<IronChest:BlockIronChest:2>, "lucrum 15, metallum 8, vitreus 5");
// Prereqs
mods.thaumcraft.Research.addPrereq("BLACKTODIAMOND", "GOLDTOBLACK", false);
mods.thaumcraft.Research.setSecondary("BLACKTODIAMOND", true);
mods.thaumcraft.Research.setConcealed("BLACKTODIAMOND", true);

# Adding a craft & research for Crystal chest
mods.thaumcraft.Research.addResearch("BLACKTOCRYSTAL",
/* TabKey                         */ "IRONCHEST",
/* AspectList                     */ "ordo 9, metallum 6, permutatio 6, vitreus 15",
/* X                              */ 8,
/* Y                              */ -1,
/* Complexity                     */ 0,
/* ItemStack                      */ <IronChest:BlockIronChest:5>);
game.setLocalization("tc.research_name.BLACKTOCRYSTAL", "Concealement : Crystal");
game.setLocalization("fr_FR", "tc.research_name.BLACKTOCRYSTAL", "Camouflage : Cristal");
game.setLocalization("tc.research_text.BLACKTOCRYSTAL", "I can see the dust behind !");
game.setLocalization("fr_FR", "tc.research_text.BLACKTOCRYSTAL", "Je vois meme la poussiere en dessous !");
mods.thaumcraft.Research.addPage("BLACKTOCRYSTAL", "tnmx.ic.blacktocrystal_1");
game.setLocalization("tnmx.ic.blacktocrystal_1", "You were so obsessed with your plan of hiding the true nature of the Black chest, that something had to go wrong ... <BR> In your quest of hiding the dark warped void ; it started to be one with the structural integrity of the chest and all the essentia you dumped within. <LINE> This chest is so clear that you can see right through it, showing the blocks hidden behind and the items you put within !");
// Crystal Chest (1 Black Chest + 80 Vitreus)
mods.thaumcraft.Crucible.addRecipe("BLACKTOCRYSTAL",
/* OutputStack                  */ <IronChest:BlockIronChest:5>,
/* InputStack                   */ <IronChest:BlockIronChest:6>,
/* AspectString                 */ "fabrico 10, ordo 15, tenebrae 8, vitreus 42");
mods.thaumcraft.Research.addCruciblePage("BLACKTOCRYSTAL", <IronChest:BlockIronChest:5>);
// Setting aspects
mods.thaumcraft.Aspects.set(<IronChest:BlockIronChest:5>, "vitreus 15, fabrico 8, ordo 5");
// Prereqs
mods.thaumcraft.Research.addPrereq("BLACKTOCRYSTAL", "GOLDTOBLACK", false);
mods.thaumcraft.Research.setSecondary("BLACKTOCRYSTAL", true);
mods.thaumcraft.Research.setConcealed("BLACKTOCRYSTAL", true);
