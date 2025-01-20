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

// 9 Spider Eyes -> 1 Eye Cluster [TH]
recipes.addShaped(<ThaumicHorizons:eyeTH>,
                  [[<minecraft:spider_eye>, <minecraft:spider_eye>, <minecraft:spider_eye>],
                   [<minecraft:spider_eye>, <minecraft:spider_eye>, <minecraft:spider_eye>],
                   [<minecraft:spider_eye>, <minecraft:spider_eye>, <minecraft:spider_eye>]]);
// 1 Eye Cluster [TH] -> 9 Spider Eyes
recipes.addShapeless(<minecraft:spider_eye> * 9, [<ThaumicHorizons:eyeTH>]);

// 9 Gunpowder -> 1 Dust [TH]
recipes.addShaped(<ThaumicHorizons:dustTH>,
                  [[<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>],
                   [<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>],
                   [<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>]]);
// 1 Dust [TH] -> 9 Gunpowder
recipes.addShapeless(<minecraft:gunpowder> * 9, [<ThaumicHorizons:dustTH>]);

# Aspects
mods.thaumcraft.Aspects.set(<ThaumicHorizons:brainTH>, "cognitio 27, corpus 13, exanimis 13"); // Lump of Brain
mods.thaumcraft.Aspects.set(<ThaumicHorizons:boneTH>, "mortuus 13, corpus 6"); // Bone
mods.thaumcraft.Aspects.set(<ThaumicHorizons:eyeTH>, "sensus 13, bestia 13, venenum 13"); // Eye Cluster
mods.thaumcraft.Aspects.set(<ThaumicHorizons:dustTH>, "ignis 27, perditio 27"); // Dust
