// Recipes for Thaumcraft - Thaumaturgy

# Nodes Mechanics
// Node Transducter (1 Advanced Node Stabilizer + 1 Essentia Mirror + 2 Redstone Blocks + 2 Arcane Stone Bricks +
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:11>);
mods.thaumcraft.Arcane.addShaped("VISPOWER",
/* Output                     */ <Thaumcraft:blockStoneDevice:11>,
/* Aspects                    */ "ignis 88, aer 88, perditio 88",
/* InputArray                 */ [[<Thaumcraft:blockCosmeticSolid:7>, <minecraft:comparator>, <Thaumcraft:blockCosmeticSolid:7>],
                                  [<Thaumcraft:ItemResource:2>, <Thaumcraft:blockStoneDevice:10>, <Thaumcraft:ItemResource:2>],
                                  [<minecraft:redstone_block>, <Thaumcraft:blockMirror:6>, <minecraft:redstone_block>]] );
mods.thaumcraft.Research.refreshResearchRecipe("VISPOWER");
// Prereqs
mods.thaumcraft.Research.addPrereq("VISPOWER", "NODESTABILIZERADV", true); // Advanced Node Stabilizer
mods.thaumcraft.Research.addPrereq("VISPOWER", "MIRRORESSENTIA", true); // Essentia Mirror
mods.thaumcraft.Research.addPrereq("VISPOWER", "THAUMIUM", true); // Thaumium
