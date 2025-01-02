// Recipes for Tainted Magic

# Aspects
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:seed:0>, "herba 1"); // Industrial Hemp Seeds
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:material:3>, "messis 1, herba 1"); // Industrial Hemp Fiber
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:ore:1>, "metallum 2, terra 1, perditio 1"); // Bauxite Ore
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:ore:4>, "metallum 3, perditio 1, ordo 1"); // Nickel Ore
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:metal:23>, "metallum 1"); // Aluminium Nugget

// Can't set aspects to Nickel Ingot & Nugget

# Seed products
// 9 Hemp => 1 String
recipes.remove(<minecraft:string>);
recipes.addShaped(<minecraft:string>,
                  [[<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>],
                   [<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>],
                   [<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>]]);
