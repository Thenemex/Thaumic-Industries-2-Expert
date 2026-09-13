// Recipes for Blood Magic

# Recipes
// Blood Altar
recipes.remove(<AWWayofTime:Altar>);
mods.thaumcraft.Arcane.addShaped("ARCANESTONE",
/* Output                     */ <AWWayofTime:Altar>, // Blood Altar
/* Aspects                    */ "terra 120, aqua 80, perditio 120",
/* InputArray                 */ [[<Thaumcraft:blockCosmeticSlabStone>, null, <Thaumcraft:blockCosmeticSlabStone>],
                                  [<Thaumcraft:blockCosmeticSolid:7>, <Thaumcraft:blockCosmeticSlabStone>, <Thaumcraft:blockCosmeticSolid:7>],
                                  [<minecraft:gold_ingot>, <minecraft:diamond>, <minecraft:gold_ingot>]] );
mods.thaumcraft.Research.addArcanePage("ARCANESTONE", <AWWayofTime:Altar>);
// ToDo Lock behind infusion with a new recipe