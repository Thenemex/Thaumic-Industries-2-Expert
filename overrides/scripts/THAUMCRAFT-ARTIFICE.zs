// Recipes for Thaumcraft - Artifice

import minetweaker.item.IItemStack;

// Array of all raw meats
val rawMeatArray = [<minecraft:porkchop>,
                    <minecraft:beef>,
                    <minecraft:chicken>,
                    <minecraft:fish:0>,
                    <minecraft:fish:1>,
                    <minecraft:fish:2>,
                    <foodaddition:RawMutton>,
                    <foodaddition:RawHorse>,
                    <foodaddition:RawCalamari>,
                    <foodaddition:RawWolf>,] as IItemStack[];
// Array of all cooked meats
val cookedMeatArray = [<minecraft:cooked_porkchop>,
                       <minecraft:cooked_beef>,
                       <minecraft:cooked_chicken>,
                       <minecraft:cooked_fished:0>,
                       <minecraft:cooked_fished:1>,
                       <minecraft:cooked_fished:2>,
                       <foodaddition:CookedMutton>,
                       <foodaddition:CookedHorse>,
                       <foodaddition:CookedCalamari>,
                       <foodaddition:CookedWolf>,] as IItemStack[];

# Adding new oredict for Thaumcraft shards
val oreDictShards = <ore:thaumcraftShards>;
oreDictShards.add(<Thaumcraft:ItemShard:0>);
oreDictShards.add(<Thaumcraft:ItemShard:1>);
oreDictShards.add(<Thaumcraft:ItemShard:2>);
oreDictShards.add(<Thaumcraft:ItemShard:3>);
oreDictShards.add(<Thaumcraft:ItemShard:4>);
oreDictShards.add(<Thaumcraft:ItemShard:5>);
oreDictShards.add(<Thaumcraft:ItemShard:6>);

# Adding new oredict for Enhanced Thaumium Tools
val oreDictEnhancedThaumiumTools = <ore:enhancedThaumiumTools>;
oreDictEnhancedThaumiumTools.add(<Thaumcraft:ItemSwordElemental>);
oreDictEnhancedThaumiumTools.add(<Thaumcraft:ItemShovelElemental>);
oreDictEnhancedThaumiumTools.add(<Thaumcraft:ItemPickaxeElemental>);
oreDictEnhancedThaumiumTools.add(<Thaumcraft:ItemAxeElemental>);
oreDictEnhancedThaumiumTools.add(<Thaumcraft:ItemHoeElemental>);

# Adding prereqs
// Adding Thaumium Helmet of Revealing as prereq for Thaumium Fortress Helmet of Revealing
mods.thaumcraft.Research.addPrereq("HELMGOGGLES", "REVEALING_HELM", true);

# Cooking meat in early-game (without furnace)
// Adding the auto-unlocked research
mods.thaumcraft.Research.addResearch("EARLYCOOKING",
/* TabKey                         */ "ARTIFICE",
/* AspectList                     */ "ignis 5, potentia 5, fames 10",
/* X                              */ 2,
/* Y                              */ -5,
/* Complexity                     */ 0,
/* ItemStack                      */ <minecraft:porkchop>);
game.setLocalization("tc.research_name.EARLYCOOKING", "Early cooking");
game.setLocalization("tc.research_text.EARLYCOOKING", "Vegetables are good for health");
mods.thaumcraft.Research.addPage("EARLYCOOKING", "tnmx.artifice.earlycooking_1");
game.setLocalization("tnmx.artifice.earlycooking_1", "Well you just spawned in this damned world, and you can't make a furnace yet ... But you have a book and a wand filled with some vis !<BR> By focusing a bit of your Ignis vis into a bunch of raw meats and some coal, you found a way to cooked a small amount of food (with loss in the process).<LINE> If you're willing to sacrifice some Fire Shards in the process, it doubles the output of cooked meat !<BR> These recipes work for all kinds of raw meats.");
// Adding the recipes
for i, el_rawMeat in rawMeatArray {
    var cookedMeat = cookedMeatArray[i];
// 8 Raw Meat + 1 Coal = 2 Cooked meat (2 ignis vis)
    mods.thaumcraft.Arcane.addShaped("EARLYCOOKING",
    /* Output                     */ cookedMeat * 2,
    /* Aspects                    */ "ignis 2",
    /* InputArray                 */ [[el_rawMeat, el_rawMeat, el_rawMeat],
                                      [el_rawMeat, <minecraft:coal>, el_rawMeat],
                                      [el_rawMeat, el_rawMeat, el_rawMeat]] );
// 4 Raw Meat + 1 Fire Shard = 2 Cooked meat (2 ignis vis)
    mods.thaumcraft.Arcane.addShaped("EARLYCOOKING",
    /* Output                     */ cookedMeat * 4,
    /* Aspects                    */ "ignis 2",
    /* InputArray                 */ [[el_rawMeat, el_rawMeat, el_rawMeat],
                                      [el_rawMeat, <Thaumcraft:ItemShard:1>, el_rawMeat],
                                      [el_rawMeat, el_rawMeat, el_rawMeat]] ); }
mods.thaumcraft.Research.addArcanePage("EARLYCOOKING", <minecraft:cooked_porkchop>);
// Prereqs
mods.thaumcraft.Research.setRound("EARLYCOOKING", true);
mods.thaumcraft.Research.setAutoUnlock("EARLYCOOKING", true);

# Furnace
// Prereqs
mods.thaumcraft.Research.addPrereq("VANILLAFURNACE", "EARLYCOOKING", false);

# Iron Tools
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:iron_axe>);
mods.thaumcraft.Research.addResearch("IRONTOOLS",
/* TabKey                         */ "ARTIFICE",
/* AspectList                     */ "metallum 15, ordo 10, terra 6, vitreus 6",
/* X                              */ -2,
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
// Adding the crafts
// Iron Pickaxe (3.2 Iron + 2 sticks)
mods.thaumcraft.Arcane.addShaped("IRONTOOLS",
/* Output                     */ <minecraft:iron_pickaxe>,
/* Aspects                    */ "aer 2, ordo 6, perditio 5, terra 10",
/* InputArray                 */ [[<ore:nuggetIron>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
                                  [null, <minecraft:stick>, <minecraft:iron_ingot>],
                                  [<minecraft:stick>, null, <ore:nuggetIron>]] );
mods.thaumcraft.Research.addArcanePage("IRONTOOLS", <minecraft:iron_pickaxe>);
// Iron Axe (3.1 Iron + 2 sticks)
mods.thaumcraft.Arcane.addShaped("IRONTOOLS",
/* Output                     */ <minecraft:iron_axe>,
/* Aspects                    */ "aer 2, ordo 5, perditio 4, terra 8",
/* InputArray                 */ [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:nuggetIron>],
                                  [<minecraft:iron_ingot>, <minecraft:stick>, null],
                                  [null, <minecraft:stick>, null]] );
mods.thaumcraft.Research.addArcanePage("IRONTOOLS", <minecraft:iron_axe>);
// Iron Bucket (3.2 Iron)
recipes.remove(<minecraft:bucket>);
mods.thaumcraft.Arcane.addShaped("IRONTOOLS",
/* Output                     */ <minecraft:bucket>,
/* Aspects                    */ "terra 3, ordo 2, aer 3",
/* InputArray                 */ [[<ore:nuggetIron>, null, <ore:nuggetIron>],
                                  [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
                                  [null, <minecraft:iron_ingot>, null]] );
mods.thaumcraft.Research.addArcanePage("IRONTOOLS", <minecraft:bucket>);
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

# Arcane Bellows
// Arcane Bellows (4 Magical planks + 1 Leather + 1 Air Shard + 1 Thaumium
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockWoodenDevice:0>);
mods.thaumcraft.Arcane.addShaped("BELLOWS",
/* Output                     */ <Thaumcraft:blockWoodenDevice:0>,
/* Aspects                    */ "aer 15, ordo 8",
/* InputArray                 */ [[<ore:magicalPlanks>, <ore:magicalPlanks>, null],
                                  [<minecraft:leather>, <Thaumcraft:ItemShard:0>, <Thaumcraft:ItemResource:2>],
                                  [<ore:magicalPlanks>, <ore:magicalPlanks>, null]] );
mods.thaumcraft.Research.refreshResearchRecipe("BELLOWS");
mods.thaumcraft.Research.addPrereq("BELLOWS", "THAUMIUM", true);

# Warded Glass
// Warded Glass (6 Glass + 2 Zombie Brains + 1 Thaumium
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockCosmeticOpaque:2>);
mods.thaumcraft.Arcane.addShaped("WARDEDARCANA",
/* Output                     */ <Thaumcraft:blockCosmeticOpaque:2> * 12,
/* Aspects                    */ "ordo 12, aqua 8, terra 8, ignis 10",
/* InputArray                 */ [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
                                  [<Thaumcraft:ItemZombieBrain>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:ItemZombieBrain>],
                                  [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]] );
mods.thaumcraft.Research.refreshResearchRecipe("WARDEDARCANA");
mods.thaumcraft.Aspects.set(<Thaumcraft:blockCosmeticOpaque:2>, "vitreus 3, tutamen 1");

# Arcane Bore
// Arcane Bore (1 Deconstruction Table + 1 Thaumometer + 2 Gold + 1 Elemental Pickaxe + 1 Elemental Shovel + 1 Void Jar)
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:blockWoodenDevice:5>);
mods.thaumcraft.Infusion.addRecipe("ARCANEBORE",
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
mods.thaumcraft.Research.addPrereq("ARCANEBORE", "THAUMOMETER", true);
mods.thaumcraft.Research.addPrereq("ARCANEBORE", "ELEMENTALPICK", true);
mods.thaumcraft.Research.addPrereq("ARCANEBORE", "ELEMENTALSHOVEL", true);
mods.thaumcraft.Research.addPrereq("ARCANEBORE", "JARVOID", true);

# Enhanced Thaumium Tools
// Pickaxe of the Core (1 Thaumium Pickaxe + 2 Fire Shards + 1 Gold Cluster + 1 Iron Cluster + 1 Thaumium + 1 Salis Mundus + 1 Greatwood Staff Core + 1 Diamond Pick
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemPickaxeElemental>);
mods.thaumcraft.Infusion.addRecipe("ELEMENTALPICK",
/* Input                        */ <Thaumcraft:ItemPickThaumium>, // Thaumium Pickaxe
/* Ingredients                  */ [<Thaumcraft:ItemNugget:31>,   // Native Gold Cluster
                                    <Thaumcraft:ItemResource:2>,  // Thaumium Ingot
                                    <Thaumcraft:ItemNugget:16>,   // Native Iron Cluster
                                    <Thaumcraft:ItemShard:1>,     // Fire Shard
                                    <minecraft:diamond_pickaxe>,  // Diamond Pickaxe
                                    <Thaumcraft:WandRod:50>,      // Greatwood Staff Core
                                    <Thaumcraft:ItemResource:14>, // Salis Mundus
                                    <Thaumcraft:ItemShard:1>],    // Fire Shard
/* Essentia                     */ "metallum 40, ignis 24, perfodio 12, sensus 12, praecantatio 10",
/* Output                       */ <Thaumcraft:ItemPickaxeElemental>,
/* Instability                  */ 4);
mods.thaumcraft.Research.refreshResearchRecipe("ELEMENTALPICK");
// Prereqs
mods.thaumcraft.Research.addPrereq("ELEMENTALPICK", "PUREIRON", true);
mods.thaumcraft.Research.addPrereq("ELEMENTALPICK", "PUREGOLD", true);
mods.thaumcraft.Research.addPrereq("ELEMENTALPICK", "ROD_GREATWOOD_STAFF", true);

// Axe of the Stream (1 Thaumium Axe + 1 Water Shard + 1 Water Bucket + 1 Greatwood Log + 1 Silverwood Log + 1 Thaumium + 1 Salis Mundus + 1 Greatwood Staff Core + 1 Diamond Axe
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemAxeElemental>);
mods.thaumcraft.Infusion.addRecipe("ELEMENTALAXE",
/* Input                        */ <Thaumcraft:ItemAxeThaumium>,   // Thaumium Axe
/* Ingredients                  */ [<Thaumcraft:blockMagicalLog:0>, // Greatwood Log
                                    <Thaumcraft:ItemResource:2>,    // Thaumium Ingot
                                    <Thaumcraft:blockMagicalLog:1>, // Silverwood Log
                                    <minecraft:water_bucket>,       // Water Bucket
                                    <minecraft:diamond_axe>,        // Diamond Axe
                                    <Thaumcraft:WandRod:50>,        // Greatwood Staff Core
                                    <Thaumcraft:ItemResource:14>,   // Salis Mundus
                                    <Thaumcraft:ItemShard:2>],      // Water Shard
/* Essentia                     */ "aqua 48, metallum 40, praecantatio 24, instrumentum 32, arbor 80",
/* Output                       */ <Thaumcraft:ItemAxeElemental>,
/* Instability                  */ 6);
mods.thaumcraft.Research.refreshResearchRecipe("ELEMENTALAXE");
// Prereqs
mods.thaumcraft.Research.addPrereq("ELEMENTALAXE", "ROD_GREATWOOD_STAFF", true);

# Fortress Armor
// Fortress Helmet (1 Thaumium Helmet + 3 Thaumium + 2 Gold + 2 Blaze Rods + 1 Emerald)
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemHelmetFortress>);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ <Thaumcraft:ItemHelmetThaumium>,
/* Ingredients                  */ [<minecraft:emerald>, <minecraft:blaze_rod>, <minecraft:gold_ingot>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <minecraft:gold_ingot>, <minecraft:blaze_rod>],
/* Essentia                     */ "metallum 48, tutamen 16, praecantatio 40, sensus 16",
/* Output                       */ <Thaumcraft:ItemHelmetFortress>,
/* Instability                  */ 4);

// Fortress Chestplate (1 Thaumium Chestplate + 5 Thaumium + 2 Gold + 2 Enchanted Fabric + 1 Belt)
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemChestplateFortress>);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ <Thaumcraft:ItemChestplateThaumium>,
/* Ingredients                  */ [<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:7>, <minecraft:gold_ingot>, <Thaumcraft:ItemBaubleBlanks:2>, <minecraft:gold_ingot>, <Thaumcraft:ItemResource:7>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>],
/* Essentia                     */ "metallum 72, tutamen 24, praecantatio 40, sensus 24",
/* Output                       */ <Thaumcraft:ItemChestplateFortress>,
/* Instability                  */ 4);

// Fortress Leggings (1 Thaumium Leggings + 4 Thaumium + 1 Gold + 2 Enchanted Fabric)
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemLeggingsFortress>);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ <Thaumcraft:ItemLeggingsThaumium>,
/* Ingredients                  */ [<minecraft:gold_ingot>, <Thaumcraft:ItemResource:7>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:7>],
/* Essentia                     */ "metallum 60, tutamen 20, praecantatio 40, sensus 20",
/* Output                       */ <Thaumcraft:ItemLeggingsFortress>,
/* Instability                  */ 4);
mods.thaumcraft.Research.refreshResearchRecipe("ARMORFORTRESS");
// Prereqs
mods.thaumcraft.Research.addPrereq("ARMORFORTRESS", "ENCHFABRIC", true);

# Aspects
// Removing Alienis from Banners
mods.thaumcraft.Aspects.set(<Thaumcraft:blockWoodenDevice:8>, "arbor 3, pannus 10, fabrico 2");
