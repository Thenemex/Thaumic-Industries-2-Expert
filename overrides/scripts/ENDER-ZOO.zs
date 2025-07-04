// Recipes for EnderZoo Mod

# Aspects
mods.thaumcraft.Aspects.set(<EnderZoo:witheringDust>, "perditio 1, mortuus 1"); // Withering Dust
mods.thaumcraft.Aspects.set(<EnderZoo:enderFragment>, "perditio 1, alienis 1"); // Ender Fragment

# Ender Pearl
recipes.remove(<minecraft:ender_pearl>);
recipes.addShaped(<minecraft:ender_pearl>,
                  [[<EnderZoo:enderFragment>, <EnderZoo:enderFragment>, <EnderZoo:enderFragment>],
                   [<EnderZoo:enderFragment>, <EnderZoo:enderFragment>, <EnderZoo:enderFragment>],
                   [<EnderZoo:enderFragment>, <EnderZoo:enderFragment>, <EnderZoo:enderFragment>]]);

# Charge Nerfs
recipes.remove(<EnderZoo:blockConfusingCharge>);
recipes.remove(<EnderZoo:blockEnderCharge>);
recipes.remove(<EnderZoo:blockConcussionCharge>);
