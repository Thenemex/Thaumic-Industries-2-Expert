// Recipes for Thaumcraft - Artifice

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

# Research Prereqs
// Adding the Enchanted Fabric as prereqs for the Thaumium Fortress Armor
mods.thaumcraft.Research.addPrereq("ARMORFORTRESS", "ENCHFABRIC", true);
