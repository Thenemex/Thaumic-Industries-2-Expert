// Recipes for Thaumic Horizons

# Recipes
// 9 Zombie Brains -> 1 Lump of Brain [TH]
recipes.addShaped(<ThaumicHorizons:brainTH>,
                  [[<Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>],
                   [<Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>],
                   [<Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>]]);
// 1 Lump of Brain [TH] -> 9 Zombie Brains
recipes.addShapeless(<Thaumcraft:ItemZombieBrain> * 9, [<ThaumicHorizons:brainTH>]);

// 9 Bones -> 1 Bone [TH]
recipes.addShaped(<ThaumicHorizons:boneTH>,
                  [[<minecraft:bone>, <minecraft:bone>, <minecraft:bone>],
                   [<minecraft:bone>, <minecraft:bone>, <minecraft:bone>],
                   [<minecraft:bone>, <minecraft:bone>, <minecraft:bone>]]);
// 1 Bone [TH] -> 9 Bones
recipes.addShapeless(<minecraft:bone> * 9, [<ThaumicHorizons:boneTH>]);

# Aspects
mods.thaumcraft.Aspects.set(<ThaumicHorizons:brainTH>, "cognitio 27, corpus 13, exanimis 13"); // Lump of Brain
mods.thaumcraft.Aspects.set(<ThaumicHorizons:boneTH>, "mortuus 13, corpus 6"); // Bone
