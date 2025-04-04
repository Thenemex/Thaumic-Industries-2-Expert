// Recipes for Tainted Magic

# Aspects
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storage:0>, "metallum 18, permutatio 6"); // Copper Block
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storage:1>, "metallum 18, aer 6"); // Aluminium Block
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:23>, "metallum 1"); // Aluminium Nugget
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metalDecoration:14>, "metallum 1, aer 1"); // Aluminium Scaffolding (Wood Variant)
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storage:2>, "metallum 18, ordo 6"); // Lead Block
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storage:3>, "metallum 18, lucrum 6"); // Silver Block
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storage:4>, "metallum 18, machina 6"); // Nickel Block
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:26>, "metallum 1"); // Nickel Nugget
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:5>, "metallum 3, ignis 1"); // Constantan Ingot
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storage:5>, "metallum 18, ignis 6"); // Constantan Block
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storageSlab:5>, "metallum 6, ignis 3"); // Constantan Slab
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:5>, "metallum 3, ignis 1"); // Constantan Ingot
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:27>, "metallum 1"); // Constantan Nugget
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:15>, "metallum 2, ignis 1, perditio 1"); // Constantan Grit
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:36>, "metallum 2, ignis 1"); // Constantan Plate
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storage:6>, "metallum 18, potentia 6, lucrum 6"); // Electrum Block
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:28>, "metallum 1"); // Electrum Nugget
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storage:7>, "metallum 18, ordo 6"); // Steel Block
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:storageSlab:7>, "metallum 6, ordo 3"); // Steel Slab
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:38>, "metallum 2, ordo 1"); // Steel Plate
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:29>, "metallum 1"); // Steel Nugget
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metalDecoration:11>, "metallum 1, ordo 1"); // Steel Scaffolding (Wood Variant)

mods.thaumcraft.Aspects.set(<ImmersiveEngineering:stoneDecoration:0>, "terra 2, fabrico 1"); // Hempcrete
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:stoneSlab:0>, "terra 1"); // Hempcrete Slab
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:seed:0>, "herba 1"); // Industrial Hemp Seeds
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:material:3>, "messis 1, herba 1"); // Industrial Hemp Fiber
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:material:4>, "fabrico 2, arbor 1"); // Tough Fabric
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:coil:3>, "fabrico 1"); // Hemp Rope Coil

mods.thaumcraft.Aspects.set(<ImmersiveEngineering:stoneDecoration:4>, "terra 4, aqua 2, fabrico 1"); // Concrete
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:concreteStairs>, "terra 2, aqua 1"); // Concrete Stairs
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:stoneSlab:1>, "terra 1"); // Concrete Slab
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:stoneDecoration:5>, "terra 4, aqua 2, fabrico 1"); // Concrete Tile
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:concreteTileStairs>, "terra 2, aqua 1"); // Concrete Tile Stairs
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:stoneSlab:2>, "terra 1"); // Concrete Tile Slab

mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metalDevice:11>, "pannus 3, metallum 2, potentia 1, machina 1"); // Conveyor Belt

mods.thaumcraft.Aspects.set(<ImmersiveEngineering:tool:3>, "cognitio 2, pannus 1, machina 1"); // Engineers Manuel

# Seed products
// 9 Hemp => 1 String
recipes.remove(<minecraft:string>);
recipes.addShaped(<minecraft:string>,
                  [[<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>],
                   [<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>],
                   [<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>]]);
