// Recipes for Thaumcraft - Artifice

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
// Adding the Enchanted Fabric as prereq for the Thaumium Fortress Armor
mods.thaumcraft.Research.addPrereq("ARMORFORTRESS", "ENCHFABRIC", true);
// Adding the Deconstruction Table, Void Jar, Elemental Pickaxe & Elemental Shovel as prereqs for the Arcane Bore
mods.thaumcraft.Research.addPrereq("DECONSTRUCTOR", "ARCANEBORE", true);
mods.thaumcraft.Research.addPrereq("DECONSTRUCTOR", "ELEMENTALPICK", true);
mods.thaumcraft.Research.addPrereq("DECONSTRUCTOR", "ELEMENTALSHOVEL", true);
mods.thaumcraft.Research.addPrereq("DECONSTRUCTOR", "JARVOID", true);
