// Recipes for Thaumic Exploration

# Boots
// Boots of the Meteor (1 Traveller Boots + 1 Fire Crystal + 1 Fireball + 1 Hyper Nitor + 1 Fire Focus + 1 Nine Hells Focus + 1 Nitor + 1 Netherrack)
mods.thaumcraft.Infusion.removeRecipe(<ThaumicExploration:bootsMeteor>);
mods.thaumcraft.Infusion.addRecipe("METEORBOOTS",
/* Input                        */ <Thaumcraft:BootsTraveller>,
/* Ingredients                  */ [<Thaumcraft:blockCrystal:1>, <minecraft:fire_charge>, <ThaumicTinkerer:brightNitor>, <Thaumcraft:FocusFire>, <minecraft:tnt>, <Thaumcraft:FocusHellbat>, <Thaumcraft:ItemResource:1>, <minecraft:netherrack>],
/* Essentia                     */ "ignis 80, infernus 28, iter 45, motus 15, potentia 62, praecantatio 36, volatus 50",
/* Output                       */ <ThaumicExploration:bootsMeteor>,
/* Instability                  */ 8);
mods.thaumcraft.Research.refreshResearchRecipe("METEORBOOTS");
mods.thaumcraft.Research.addPrereq("METEORBOOTS", "BRIGHT_NITOR", true);
mods.thaumcraft.Research.addPrereq("METEORBOOTS", "FOCUSFIRE", true);
mods.thaumcraft.Research.addPrereq("METEORBOOTS", "FOCUSHELLBAT", true);
