// Recipes for Thaumcraft - Artifice

# Adding new oredict for Thaumcraft shards
val oreDictShards = <ore:thaumcraftShards>;
oreDictShards.add(<Thaumcraft:ItemShard:0>);
oreDictShards.add(<Thaumcraft:ItemShard:1>);
oreDictShards.add(<Thaumcraft:ItemShard:2>);
oreDictShards.add(<Thaumcraft:ItemShard:3>);
oreDictShards.add(<Thaumcraft:ItemShard:4>);
oreDictShards.add(<Thaumcraft:ItemShard:5>);
oreDictShards.add(<Thaumcraft:ItemShard:6>);

# Furnace
// Adding the research
recipes.remove(<minecraft:furnace>);
mods.thaumcraft.Research.addResearch("VANILLAFURNACE",
/* TabKey                         */ "ARTIFICE",
/* AspectList                     */ "ignis 2, perditio 6, terra 6",
/* X                              */ 1,
/* Y                              */ -5,
/* Complexity                     */ 1,
/* ItemStack                      */ <minecraft:furnace>);
game.setLocalization("tc.research_name.VANILLAFURNACE", "Stone Furnace");
game.setLocalization("fr_FR", "tc.research_name.VANILLAFURNACE", "Four en pierre");
game.setLocalization("tc.research_text.VANILLAFURNACE", "It burns !");
game.setLocalization("fr_FR", "tc.research_text.VANILLAFURNACE", "Ca cuit !");
mods.thaumcraft.Research.addPage("VANILLAFURNACE", "tnmx.artifice.vanillafurnace_1");
game.setLocalization("tnmx.artifice.vanillafurnace_1", "After some struggles on your first steps through this world, you finally discover how to smelt items like your ancestors did.");
game.setLocalization("fr_FR", "tnmx.artifice.vanillafurnace_1", "Apres avoir rencontre des difficultes lors de vos premiers pas dans ce monde, vous avez enfin decouvert une voie pour cuire des objets comme vos ancetres.");
// Adding the craft
mods.thaumcraft.Arcane.addShaped("VANILLAFURNACE",
/* Output                     */ <minecraft:furnace>,
/* Aspects                    */ "ignis 10, ordo 5, perditio 5, terra 10",
/* InputArray                 */ [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
                                  [<minecraft:cobblestone>, oreDictShards, <minecraft:cobblestone>],
                                  [<minecraft:cobblestone>, <ore:blockCoal>, <minecraft:cobblestone>]] );
mods.thaumcraft.Research.addArcanePage("VANILLAFURNACE", <minecraft:furnace>);

# Iron Tools
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:iron_axe>);
mods.thaumcraft.Research.addResearch("IRONTOOLS",
/* TabKey                         */ "ARTIFICE",
/* AspectList                     */ "metallum 15, ordo 10, terra 6, vitreus 6",
/* X                              */ -1,
/* Y                              */ -5,
/* Complexity                     */ 1,
/* ItemStack                      */ <minecraft:iron_pickaxe>);
game.setLocalization("tc.research_name.IRONTOOLS", "Iron Tools");
game.setLocalization("fr_FR", "tc.research_name.IRONTOOLS", "Outils en Fer");
game.setLocalization("tc.research_text.IRONTOOLS", "Finally I can mine gold ...");
game.setLocalization("fr_FR", "tc.research_text.IRONTOOLS", "Je peux enfin miner de l'or ...");
mods.thaumcraft.Research.addPage("IRONTOOLS", "tnmx.artifice.irontools_1");
game.setLocalization("tnmx.artifice.irontools_1", "This furnace is a bit slow, but still a blessing ! I can finally get my hand on some iron bars.<LINE>This metal is in fact pretty weak, but I need some mining tool to get the gold I need for my researchs ...<BR>So I started drawing and figured I can mine a few blocks with an iron pickaxe infused with some aspects from my wand to strengthen it.<BR>I can also make other weak tools with these bars");
game.setLocalization("fr_FR", "tnmx.artifice.irontools_1", "Ce four est un lent a cuire les minerais, mais il reste tres utile ! Je peux enfin obtenir quelques lingots de fer.<LINE>Malheureusement ce materiau est assez fragile et peu vigoureux, mais il me faut absolument de quoi miner le peu d'or dont j'ai besoin pour mes recherches ...<BR>J'ai ainsi commence a travailler dessus ; le resultat est une pioche en fer renforcee avec les aspects de ma baguette magique ; qui ne pourra miner que quelques blocs. D'autres outils peuvent egalement etre fabriques avec ces lingots.");
// Adding the craft
mods.thaumcraft.Arcane.addShaped("IRONTOOLS",
/* Output                     */ <minecraft:iron_pickaxe>,
/* Aspects                    */ "aer 2, ordo 6, perditio 5, terra 10",
/* InputArray                 */ [[<ore:nuggetIron>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
                                  [null, <minecraft:stick>, <minecraft:iron_ingot>],
                                  [<minecraft:stick>, null, <ore:nuggetIron>]] );
mods.thaumcraft.Research.addArcanePage("IRONTOOLS", <minecraft:iron_pickaxe>);
mods.thaumcraft.Arcane.addShaped("IRONTOOLS",
/* Output                     */ <minecraft:iron_axe>,
/* Aspects                    */ "aer 2, ordo 5, perditio 4, terra 8",
/* InputArray                 */ [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:nuggetIron>],
                                  [<minecraft:iron_ingot>, <minecraft:stick>, null],
                                  [null, <minecraft:stick>, null]] );
mods.thaumcraft.Research.addArcanePage("IRONTOOLS", <minecraft:iron_axe>);
// Prereqs
mods.thaumcraft.Research.addPrereq("IRONTOOLS", "VANILLAFURNACE", false);

# Matrix Infusion
// Runic Matrix (4 Arcane Stone + 4 Balanced Shards + 1 Ender Pearl)
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:2>);
mods.thaumcraft.Arcane.addShaped("INFUSION",
/* Output                     */ <Thaumcraft:blockStoneDevice:2>,
/* Aspects                    */ "ordo 53",
/* InputArray                 */ [[<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:blockCosmeticSolid:6>],
                                  [<Thaumcraft:ItemShard:6>, <minecraft:ender_pearl>, <Thaumcraft:ItemShard:6>],
                                  [<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:blockCosmeticSolid:6>]] );
// Arcane Pedestal
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:1>);
mods.thaumcraft.Arcane.addShaped("INFUSION",
/* Output                     */ <Thaumcraft:blockStoneDevice:1> * 2,
/* Aspects                    */ "aer 12, ordo 5",
/* InputArray                 */ [[<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:7>, <Thaumcraft:blockCosmeticSolid:6>],
                                  [null, <Thaumcraft:blockCosmeticSolid:6>, null],
                                  [<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>]] );
mods.thaumcraft.Research.refreshResearchRecipe("INFUSION");

# Arcane Bore
// Arcane Bore (1 Deconstruction Table + 1 Thaumometer + 2 Gold + 1 Elemental Pickaxe + 1 Elemental Shovel + 1 Void Jar)
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:blockWoodenDevice:5>);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ <Thaumcraft:blockTable:14>,
/* Ingredients                  */ [<Thaumcraft:ItemThaumometer>, <minecraft:gold_ingot>, <Thaumcraft:blockWoodenDevice:6>, <minecraft:gold_ingot>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:ItemPickaxeElemental>, <Thaumcraft:blockJar:3>, <Thaumcraft:ItemShovelElemental>, <Thaumcraft:blockWoodenDevice:6>, <minecraft:gold_ingot>, <Thaumcraft:blockWoodenDevice:6>, <minecraft:gold_ingot>],
/* Essentia                     */ "perfodio 64, machina 55, potentia 28, vacuos 22, motus 15",
/* Output                       */ <Thaumcraft:blockWoodenDevice:5>,
/* Instability                  */ 6);

// Arcane Bore Base (1 Dispenser + 1 Item Grate + 4 Greatwood Planks)
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockWoodenDevice:4>);
mods.thaumcraft.Arcane.addShaped("ARCANEBORE",
/* Output                     */ <Thaumcraft:blockWoodenDevice:4>,
/* Aspects                    */ "aer 20, terra 60, ordo 45",
/* InputArray                 */ [[<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockMetalDevice:5>, <Thaumcraft:blockWoodenDevice:6>], 
                                  [<minecraft:iron_ingot>, <minecraft:dispenser>, <minecraft:iron_ingot>],
                                  [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>]] );
mods.thaumcraft.Research.refreshResearchRecipe("ARCANEBORE");
// Prereqs
mods.thaumcraft.Research.addPrereq("ARCANEBORE", "DECONSTRUCTOR", true);
mods.thaumcraft.Research.addPrereq("ARCANEBORE", "ELEMENTALPICK", true);
mods.thaumcraft.Research.addPrereq("ARCANEBORE", "ELEMENTALSHOVEL", true);
mods.thaumcraft.Research.addPrereq("ARCANEBORE", "JARVOID", true);

# Fortress Armor
// Fortress Helmet (1 Thaumium Helmet + 3 Thaumium + 2 Gold + 2 Blaze Rods + 1 Emerald)
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemHelmetFortress>);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ <Thaumcraft:ItemHelmetThaumium>,
/* Ingredients                  */ [<minecraft:emerald>, <minecraft:blaze_rod>, <minecraft:gold_ingot>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <minecraft:gold_ingot>, <minecraft:blaze_rod>],
/* Essentia                     */ "metallum 48, tutamen 32, praecantatio 40, sensus 16",
/* Output                       */ <Thaumcraft:ItemHelmetFortress>,
/* Instability                  */ 4);

// Fortress Chestplate (1 Thaumium Chestplate + 5 Thaumium + 2 Gold + 2 Enchanted Fabric + 1 Belt)
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemChestplateFortress>);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ <Thaumcraft:ItemChestplateThaumium>,
/* Ingredients                  */ [<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:7>, <minecraft:gold_ingot>, <Thaumcraft:ItemBaubleBlanks:2>, <minecraft:gold_ingot>, <Thaumcraft:ItemResource:7>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>],
/* Essentia                     */ "metallum 72, tutamen 48, praecantatio 40, sensus 24",
/* Output                       */ <Thaumcraft:ItemChestplateFortress>,
/* Instability                  */ 4);

// Fortress Leggings (1 Thaumium Leggings + 4 Thaumium + 1 Gold + 2 Enchanted Fabric)
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemLeggingsFortress>);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ <Thaumcraft:ItemLeggingsThaumium>,
/* Ingredients                  */ [<minecraft:gold_ingot>, <Thaumcraft:ItemResource:7>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:7>],
/* Essentia                     */ "metallum 60, tutamen 40, praecantatio 40, sensus 20",
/* Output                       */ <Thaumcraft:ItemLeggingsFortress>,
/* Instability                  */ 4);
mods.thaumcraft.Research.refreshResearchRecipe("ARMORFORTRESS");
// Prereqs
mods.thaumcraft.Research.addPrereq("ARMORFORTRESS", "ENCHFABRIC", true);


# Aspects
// Removing Alienis from Banners
mods.thaumcraft.Aspects.set(<Thaumcraft:blockWoodenDevice:8>, "arbor 3, pannus 10, fabrico 2");
