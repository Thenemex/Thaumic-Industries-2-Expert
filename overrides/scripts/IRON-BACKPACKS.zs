// Recipes for Iron Backpacks

val treatLeather = <ironbackpacks:treatedLeather>;

val chest = <ore:chestWood>;

val backpack = <ironbackpacks:basicBackpack>;

# Backpacks
// Basic Backpack

recipes.remove(backpack);
recipes.addShaped(backpack,
/* Input        */[[treatLeather, treatLeather, treatLeather],
                   [treatLeather, chest, treatLeather],
                   [treatLeather, treatLeather, treatLeather]]);
