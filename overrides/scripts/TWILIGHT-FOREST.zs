// Recipes for Twilight Forest mod

val catalyst = <TwilightForestPortalCatalyst:TwilightForestPortalCatalyst>;

# Nerfs
// Remove Block & Chain recipe
recipes.remove(<TwilightForest:item.chainBlock>);

# Research for portal
// Renaming the item
catalyst.displayName = "Twilight Catalyst";
catalyst.addTooltip(format.yellow("The key to another dimension ... "));
// Adding the research
mods.thaumcraft.Research.addResearch("TWILIGHTCATALYST",
/* TabKey                         */ "ARTIFICE",
/* AspectList                     */ "iter 15, praecantatio 10, sensus 6, tenebrae 6, lucrum 5, alienis 2",
/* X                              */ -5,
/* Y                              */ 1,
/* Complexity                     */ 5,
/* ItemStack                      */ catalyst);
game.setLocalization("tc.research_name.TWILIGHTCATALYST", "The Twilight");
game.setLocalization("fr_FR", "tc.research_name.TWILIGHTCATALYST", "Le Crepuscule");
game.setLocalization("tc.research_text.TWILIGHTCATALYST", "The key to another dimension !");
game.setLocalization("fr_FR", "tc.research_text.TWILIGHTCATALYST", "La clé vers un autre monde !");
mods.thaumcraft.Research.addPage("TWILIGHTCATALYST", "tnmx.twf.twilightcatalyst_1");
game.setLocalization("tnmx.twf.twilightcatalyst_1", "In this world, most of the rules are changed.<BR> The portal to the Twilight won't open with a mundane diamond. You need something much more complex and valuable than this, or else the Twilight won't allow you in ...<LINE>You'll find here the infusion for making the Catalyst to open the door to this world.");
// Catalyst (1 Primal Charm + 1 Salis Mundis + 4 Thaumium + 2 Diamonds + 1 Emerald)
mods.thaumcraft.Infusion.addRecipe("TWILIGHTCATALYST",
/* Input                        */ <Thaumcraft:ItemResource:15>,
/* Ingredients                  */ [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:2>, <minecraft:diamond>, <Thaumcraft:ItemResource:2>, <minecraft:emerald>, <Thaumcraft:ItemResource:2>, <minecraft:diamond>, <Thaumcraft:ItemResource:2>],
/* Essentia                     */ "arbor 80, praecantatio 42, sensus 30, iter 25, tenebrae 18, ordo 16, auram 5",
/* Output                       */ catalyst,
/* Instability                  */ 4);
mods.thaumcraft.Research.addInfusionPage("TWILIGHTCATALYST", catalyst);
// Prereqs
mods.thaumcraft.Research.addPrereq("TWILIGHTCATALYST", "INFUSION", false);
mods.thaumcraft.Research.addPrereq("TWILIGHTCATALYST", "THAUMIUM", true);
// Warping
mods.thaumcraft.Warp.addToResearch("TWILIGHTCATALYST", 2);

# Aspects
mods.thaumcraft.Aspects.set(<TwilightForest:tile.CastleDoor>, "gelum 2, machina 2"); // Blue Castle Door
mods.thaumcraft.Aspects.set(<TwilightForest:tile.CastleDoorVanished>, "gelum 2, iter 2"); // Blue Castle Door (Opened)
mods.thaumcraft.Aspects.set(<TwilightForest:tile.AuroraSlab>, "gelum 1, vitreus 1"); // Aurora Slab

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerDevice:0>, "arbor 4, machina 4, iter 2"); // Reappearing Block
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerDevice:2>, "arbor 4, machina 4, praecantatio 2, alienis 2"); // Vanishing Block
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerDevice:4>, "arbor 4, machina 4, tutamen 2"); // Locked Vanishing Block
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerDevice:5>, "arbor 4, machina 4"); // Unlocked Reappearing Block
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerDevice:6>, "arbor 4, machina 8, fabrico 4, praecantatio 2"); // Carminite Builder
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerDevice:9>, "arbor 4, machina 4, perditio 2, perfodio 2"); // Anti-Builder
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerDevice:10>, "arbor 4, telum 6, sensus 2, cognitio 2, vinculum 8"); // Ghast Trap
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerDevice:12>, "arbor 4, machina 4, ira 8, fabrico 2, telum 8, mortuus 6, vinculum 12"); // Carminite Reactor

mods.thaumcraft.Aspects.set(<TwilightForest:tile.HugeStalk>, "arbor 8, herba 4, victus 2"); // Huge Stalk
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFPlant:11>, "herba 1, mortuus 1, perditio 1"); // Dried Bush

// Nagastone Head
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:0>, "terra 2, ordo 4, lucrum 2, sensus 2");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:1>, "terra 2, ordo 4, lucrum 2, sensus 2");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:2>, "terra 2, ordo 4, lucrum 2, sensus 2");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:3>, "terra 2, ordo 4, lucrum 2, sensus 2");
// Nagastone
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:4>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:5>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:6>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:7>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:8>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:9>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:10>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:11>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:12>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:13>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:14>, "terra 2, ordo 1, motus 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFNagastone:15>, "terra 2, ordo 1, motus 1");

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMagicLeaves:0>, "herba 2, praecantatio 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMagicLeaves:1>, "herba 2, praecantatio 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMagicLeaves:2>, "herba 2, praecantatio 1");
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMagicLeaves:3>, "herba 2, praecantatio 1");

mods.thaumcraft.Aspects.set(<TwilightForest:tile.WispyCloud>, "aer 4, tempestas 2, volatus 2"); // Wispy Cloud

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFSapling:5>, "herba 4, arbor 2, praecantatio 2"); // Tree of Time Sapling
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFSapling:6>, "herba 4, arbor 2, praecantatio 1"); // Tree of Transformation Sapling
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFSapling:7>, "herba 4, arbor 2, praecantatio 1"); // Miners Tree Sapling
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFSapling:8>, "herba 4, arbor 2, praecantatio 1"); // Sorting Tree Sapling

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFSapling:9>, "herba 4, arbor 2, sensus 8"); // Rainbow Oak Sapling

mods.thaumcraft.Aspects.set(<TwilightForest:tile.AuroraDoubleSlab>, "gelum 2, vitreus 2"); // Aurora Double Slab

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMagicLogSpecial:0>, "arbor 4, praecantatio 5, sano 8, sensus 8"); // Timewood Clock
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMagicLogSpecial:1>, "arbor 4, praecantatio 5, lucrum 4, sensus 2"); // Heart of Transformation
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMagicLogSpecial:2>, "arbor 4, praecantatio 5, lucrum 16, perfodio 8, terra 6"); // Minewood Core
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMagicLogSpecial:3>, "arbor 4, praecantatio 5, ordo 8, cognitio 8"); // Sortingwood Engine

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMazestone:0>, "terra 2, vinculum 1, tutamen 1"); // Mazestone
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMazestone:1>, "terra 2, vinculum 1, tutamen 1"); // Mazestone Brick
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMazestone:2>, "terra 2, vinculum 1, tutamen 1"); // Chiseled Mazestone
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMazestone:3>, "terra 2, vinculum 1, tutamen 1"); // Decorative Mazestone Brick
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMazestone:4>, "terra 2, vinculum 1, tutamen 1"); // Cracked Mazestone Brick
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMazestone:5>, "terra 2, vinculum 1, tutamen 1"); // Mossy Mazestone Brick
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMazestone:6>, "terra 2, vinculum 1, tutamen 1"); // Mazestone Mosaic
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFMazestone:7>, "terra 2, vinculum 1, tutamen 1"); // Mazestone Border

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerStone:0>, "arbor 2"); // Towerwood Planks
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerStone:1>, "arbor 2, fabrico 1"); // Encased Towerwood
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerStone:2>, "arbor 2, perditio 1"); // Cracked Towerwood
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerStone:3>, "arbor 2, herba 1"); // Mossy Towerwood
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFTowerStone:4>, "arbor 2, vinculum 1, bestia 1"); // Infested Towerwood

mods.thaumcraft.Aspects.set(<TwilightForest:tile.FluffyCloud>, "aer 4, tempestas 2, volatus 2"); // Fluffy Cloud

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFRoots:1>, "arbor 1, victus 1, praecantatio 1"); // Liveroots

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFUnderBrick:1>, "terra 2, herba 1, tenebrae 1"); // Mossy Underbrick
mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFUnderBrick:2>, "terra 2, perditio 1, tenebrae 1"); // Cracked Underbrick

mods.thaumcraft.Aspects.set(<TwilightForest:tile.TFFireflyJar>, "vitreus 2, lux 1"); // Firefly Jar

mods.thaumcraft.Aspects.set(<TwilightForest:tile.AuroraPillar>, "gelum 2, vitreus 2"); // Aurora Pillar
mods.thaumcraft.Aspects.set(<TwilightForest:tile.CastleBrick:0>, "terra 2, vitreus 1, fabrico 1"); // Castle Brick
mods.thaumcraft.Aspects.set(<TwilightForest:tile.CastleBrick:1>, "terra 2, fabrico 1"); // Worn Castle Brick
mods.thaumcraft.Aspects.set(<TwilightForest:tile.CastleBrick:2>, "terra 2, perditio 1, fabrico 1"); // Cracked Castle Brick
mods.thaumcraft.Aspects.set(<TwilightForest:tile.CastleBrick:3>, "terra 2, sensus 1, fabrico 1"); // Castle Roof Tile

mods.thaumcraft.Aspects.set(<TwilightForest:item.magicMapFocus>, "volatus 2, sensus 2, ordo 1, instrumentum 1"); // Magic Map Focus
mods.thaumcraft.Aspects.set(<TwilightForest:item.emptyOreMap>, "lucrum 32, cognitio 4, praecantatio 3, iter 2"); // Blank Maze/Ore Map
mods.thaumcraft.Aspects.set(<TwilightForest:item.nagaScale>, "tutamen 4, motus 2, bestia 1, corpus 1"); // Naga Scale
mods.thaumcraft.Aspects.set(<TwilightForest:item.magicBeans>, "herba 4, superbia 4, lucrum 4"); // Magic Beans
