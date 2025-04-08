// Recipes for Thaumic Tinkerer

# Deleting items
// Removing Focus : Dislocation - It can move energized nodes ...
mods.thaumcraft.Infusion.removeRecipe(<ThaumicTinkerer:focusDislocation>);
mods.thaumcraft.Research.clearPrereqs("FOCUS_DISLOCATION");
mods.thaumcraft.Research.removeResearch("FOCUS_DISLOCATION");

# Osmotic Enchanter
// Osmotic Enchanter (1 Enchantment Table + 1 Spellbinding Cloth)
mods.thaumcraft.Infusion.removeRecipe(<ThaumicTinkerer:enchanter>);
mods.thaumcraft.Infusion.addRecipe("ENCHANTER",
/* Input                        */ <minecraft:enchanting_table>,
/* Ingredients                  */ [<ThaumicTinkerer:spellCloth>, <Thaumcraft:blockCosmeticSolid:4>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:blockCosmeticSolid:4>, <Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:blockCosmeticSolid:4>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:blockCosmeticSolid:1>, <Thaumcraft:blockCosmeticSolid:4>],
/* Essentia                     */ "alienis 70, cognitio 40, potentia 32, praecantatio 150, vacuos 32, tenebrae 25",
/* Output                       */ <ThaumicTinkerer:enchanter>,
/* Instability                  */ 16);
mods.thaumcraft.Research.refreshResearchRecipe("ENCHANTER");
// Adding the Primordial Pearl as prereq for the Osmotic Enchanter
mods.thaumcraft.Research.addPrereq("ENCHANTER", "PRIMPEARL", true);
