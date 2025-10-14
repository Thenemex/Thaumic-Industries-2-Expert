// Recipes for Thaumic Exploration

# Boots
// Boots of the Meteor (1 Traveller Boots + 1 Fire Crystal + 1 Fireball + 1 Hyper Nitor + 1 Fire Focus + 1 Nine Hells Focus + 1 Nitor + 1 Netherrack)
mods.thaumcraft.Infusion.removeRecipe(<ThaumicExploration:bootsMeteor>);
mods.thaumcraft.Infusion.addRecipe("METEORBOOTS",
/* Input                        */ <ThaumicTinkerer:ichorclothBootsGem:0>,
/* Ingredients                  */ [<Thaumcraft:ItemEldritchObject:3>,     // Primordial Pearl
                                    <minecraft:fire_charge>,               // Fire Charge
                                    <ThaumicTinkerer:brightNitor>,         // Hyperenergetic Nitor
                                    <Thaumcraft:FocusFire>,                // Wand Focus: Fire
                                    <minecraft:tnt>,                       // TNT
                                    <Thaumcraft:FocusHellbat>,             // Wand Focus: Nine Hells
                                    <Thaumcraft:ItemResource:1>,           // Nitor
                                    <Thaumcraft:blockCrystal:1>],          // Fire Crystal Cluster
/* Essentia                     */ "ignis 160, infernus 45, iter 90, motus 32, potentia 135, praecantatio 70, volatus 110",
/* Output                       */ <ThaumicExploration:bootsMeteor>,
/* Instability                  */ 16);
mods.thaumcraft.Research.refreshResearchRecipe("METEORBOOTS");
mods.thaumcraft.Research.addPrereq("METEORBOOTS", "ICHORCLOTH_BOOTS_GEM", true);
mods.thaumcraft.Research.addPrereq("METEORBOOTS", "PRIMPEARL", true);
mods.thaumcraft.Research.addPrereq("METEORBOOTS", "BRIGHT_NITOR", true);
mods.thaumcraft.Research.addPrereq("METEORBOOTS", "FOCUSFIRE", true);
mods.thaumcraft.Research.addPrereq("METEORBOOTS", "FOCUSHELLBAT", true);

# Wand cores
// Transmutative Wand Core (1 Primal Charm + 1 Wand Focus: Primal + 3 Salis Mundis + 4 Balanced Shards + 1 of each Shard
mods.thaumcraft.Infusion.removeRecipe(<ThaumicExploration:transmutationCore>);
mods.thaumcraft.Infusion.addRecipe("ROD_TRANSMUTATION",
/* Input                        */ <Thaumcraft:ItemResource:15>,   // Primal Charm
/* Ingredients                  */ [<Thaumcraft:FocusPrimal>,      // Wand Focus: Primal
                                    <Thaumcraft:ItemResource:14>,  // Salis Mundus
                                    <Thaumcraft:ItemShard:0>,      // Air Shard
                                    <Thaumcraft:ItemShard:1>,      // Fire Shard
                                    <Thaumcraft:ItemShard:2>,      // Water Shard
                                    <Thaumcraft:ItemShard:3>,      // Earth Shard
                                    <Thaumcraft:ItemShard:4>,      // Order Shard
                                    <Thaumcraft:ItemShard:5>,      // Entropy Shard
                                    <Thaumcraft:ItemShard:6>,      // Balanced Shard
                                    <Thaumcraft:ItemResource:14>], // Salis Mundus
/* Essentia                     */ "praecantatio 80, permutatio 48, auram 122, lucrum 25, instrumentum 76",
/* Output                       */ <ThaumicExploration:transmutationCore>,
/* Instability                  */ 12);
mods.thaumcraft.Research.refreshResearchRecipe("ROD_TRANSMUTATION");
mods.thaumcraft.Research.addPrereq("ROD_TRANSMUTATION", "FOCUSPRIMAL", true);
