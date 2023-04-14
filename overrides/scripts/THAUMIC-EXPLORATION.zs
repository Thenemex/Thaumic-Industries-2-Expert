// Recipes for Thaumic Exploration

val travelBoots = <Thaumcraft:BootsTraveller>;
val meteorBoots = <ThaumicExploration:bootsMeteor>;

val fireball = <minecraft:fire_charge>;
val netherrack = <minecraft:netherrack>;

val hyperNitor = <ThaumicTinkerer:brightNitor>;
val fireFocus = <Thaumcraft:FocusFire>;
val hellbatFocus = <Thaumcraft:FocusHellbat>;
val crimsonBoots = <Thaumcraft:ItemBootsCultist>;
val fireCrystal = <Thaumcraft:blockCrystal:1>;

# Boots
// Boots of the Meteor
mods.thaumcraft.Infusion.removeRecipe(meteorBoots);
mods.thaumcraft.Infusion.addRecipe("METEORBOOTS",
/* Input                        */ travelBoots,
/* Ingredients                  */ [fireCrystal, fireball, fireFocus, hyperNitor, crimsonBoots, hyperNitor, hellbatFocus, netherrack],
/* Essentia                     */ "ignis 80, potentia 62, iter 45, volatus 50, infernus 28",
/* Output                       */ meteorBoots,
/* Instability                  */ 8);
mods.thaumcraft.Research.refreshResearchRecipe("METEORBOOTS");
