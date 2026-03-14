// Recipes for Thaumcraft - Golemancy GOLEMBELL

# Adding a craft to the vanilla Golem Bell
mods.thaumcraft.Arcane.addShaped("GOLEMBELL",
/* Output                     */ <Thaumcraft:GolemBell>,
/* Aspects                    */ "ordo 5",
/* InputArray                 */ [[null, <minecraft:quartz>, <minecraft:quartz>],
                                  [null, <minecraft:quartz>, <minecraft:quartz>],
                                  [<Thaumcraft:WandRod:0>, null, null]] );
mods.thaumcraft.Research.addArcanePage("GOLEMBELL", <Thaumcraft:GolemBell>);
// Prereqs (Greatwood Wand Core)
mods.thaumcraft.Research.addPrereq("GOLEMBELL", "ROD_greatwood", true);

# Hungry Chest
// Hungry Chest = 7 Greatwood Planks + 1 Item Grate
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockChestHungry>);
mods.thaumcraft.Arcane.addShaped("HUNGRYCHEST",
/* Output                     */ <Thaumcraft:blockChestHungry>,
/* Aspects                    */ "aer 10, ordo 5, perditio 5",
/* InputArray                 */ [[<Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMetalDevice:5>, <Thaumcraft:blockMagicalLog:0>],
                                  [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:ItemNugget:0>, <Thaumcraft:blockWoodenDevice:6>],
                                  [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>]] );
mods.thaumcraft.Research.refreshResearchRecipe("HUNGRYCHEST");

# Golem Core
// Golem Animation Core (empty)
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:ItemGolemCore:100>);
mods.thaumcraft.Arcane.addShaped("COREGATHER",
/* Output                     */ <Thaumcraft:ItemGolemCore:100>,
/* Aspects                    */ "ordo 20, ignis 20",
/* InputArray                 */ [[<minecraft:brick>, <minecraft:brick_block>, <minecraft:brick>],
                                  [<minecraft:brick_block>, <Thaumcraft:ItemResource:1>, <minecraft:brick_block>],
                                  [<minecraft:brick>, <minecraft:brick_block>, <minecraft:brick>]] );
mods.thaumcraft.Research.refreshResearchRecipe("COREGATHER");

// Golem Core : Fishing
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:11>);
mods.thaumcraft.Infusion.addRecipe("COREFISHING",
/* Input                        */ <Thaumcraft:ItemGolemCore:3>,   // Golem Animation Core : Harvest
/* Ingredients                  */ [<minecraft:fishing_rod:32767>, // Fishing Rod
                                    <minecraft:fish:0>,            // Raw Fish
                                    <Thaumcraft:ItemShard:2>,      // Water Shard
                                    <minecraft:fish:2>,            // Clownfish
                                    <minecraft:fish:3>,            // Pufferfish - Redo with ENCHANTED BOOK
                                    <foodaddition:RawCalamari>,    // Raw Calamari
                                    <minecraft:waterlily>,         // Lily Pad
                                    <minecraft:fish:1>],           // Raw Salmon
/* Essentia                     */ "aqua 45, bestia 24, instrumentum 32, ordo 40, meto 20",
/* Output                       */ <Thaumcraft:ItemGolemCore:11>, // Golem Animation Core : Fishing
/* Instability                  */ 6);
mods.thaumcraft.Research.refreshResearchRecipe("COREFISHING");

# Metadata 32676 patch
// Golem Core : Use
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:8>);
mods.thaumcraft.Infusion.addRecipe("COREUSE",
/* Input                        */ <Thaumcraft:ItemGolemCore:1>,       // Golem Animation Core : Empty
/* Ingredients                  */ [<minecraft:comparator>,            // Comparator
                                    <minecraft:flint_and_steel:32767>, // Flint & Steel
                                    <minecraft:shears>,                // Shears
                                    <minecraft:lever>],                // Lever
/* Essentia                     */ "humanus 20, instrumentum 20, machina 20",
/* Output                       */ <Thaumcraft:ItemGolemCore:8>,
/* Instability                  */ 2);
mods.thaumcraft.Research.refreshResearchRecipe("COREUSE");

// Golem Core : Chop
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:7>);
mods.thaumcraft.Infusion.addRecipe("CORELUMBER",
/* Input                        */ <Thaumcraft:ItemGolemCore:3>,         // Golem Animation Core : Harvest
/* Ingredients                  */ [<Thaumcraft:ItemAxeElemental:32767>, // Axe of the Stream
                                    <minecraft:iron_axe:32767>,          // Iron Axe
                                    <minecraft:iron_axe:32767>,          // ...
                                    <minecraft:iron_axe:32767>],         // ...
/* Essentia                     */ "instrumentum 16, arbor 16, meto 16",
/* Output                       */ <Thaumcraft:ItemGolemCore:7>,
/* Instability                  */ 2);
mods.thaumcraft.Research.refreshResearchRecipe("CORELUMBER");
