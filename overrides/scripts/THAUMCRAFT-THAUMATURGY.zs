// Recipes for Thaumcraft - Thaumaturgy

# Wands
// Silverwood Wand Core
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:WandRod:2>);
mods.thaumcraft.Infusion.addRecipe("ROD_silverwood",
/* Input                        */ <Thaumcraft:blockMagicalLog:1>,
/* Ingredients                  */ [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:0>, <Thaumcraft:ItemShard:1>, <Thaumcraft:ItemShard:2>, <Thaumcraft:ItemShard:3>, <Thaumcraft:ItemShard:4>, <Thaumcraft:ItemShard:5>],
/* Essentia                     */ "aer 18, ignis 18, aqua 18, terra 18, ordo 18, perditio 18, praecantatio 25",
/* Output                       */ <Thaumcraft:WandRod:2>,
/* Instability                  */ 5);
mods.thaumcraft.Research.refreshResearchRecipe("ROD_silverwood");

# Nodes Mechanics
// Node Transducer (1 Advanced Node Stabilizer + 1 Essentia Mirror + 2 Redstone Blocks + 2 Arcane Stone Bricks +
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
// Aspects
mods.thaumcraft.Aspects.set(<Thaumcraft:blockStoneDevice:10>, "potentia 15, lux 8, ignis 8, ordo 7, terra 6, auram 5"); // Advanced Node Stabilizer
mods.thaumcraft.Aspects.set(<Thaumcraft:blockStoneDevice:11>, "potentia 22, ignis 16, metallum 15, perditio 11, aer 9, praecantatio 8"); // Node Transducer
