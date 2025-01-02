// Recipes for Tainted Magic

# Aspects
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:seed:0>, "herba 1"); // Industrial Hemp Seeds
mods.thaumcraft.Aspects.set(<ImmersiveEngineering:material:3>, "messis 1, herba 1"); // Industrial Hemp Fiber

# Seed products
// 9 Hemp => 1 String
recipes.remove(<minecraft:string>);
recipes.addShaped(<minecraft:string>,
                  [[<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>],
                   [<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>],
                   [<ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>, <ImmersiveEngineering:material:3>]]);
