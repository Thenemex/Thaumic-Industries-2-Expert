// Recipes for Thaumic Horizons

# Recipes
// 9 Zombie Brains -> 1 Lump of Brain
recipes.addShaped(<ThaumicHorizons:brainTH>,
                  [[<Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>],
                   [<Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>],
                   [<Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>, <Thaumcraft:ItemZombieBrain>]]);
// 1 Lump of Brain -> 9 Zombie Brains
recipes.addShapeless(<Thaumcraft:ItemZombieBrain> * 9, [<ThaumicHorizons:brainTH>]);

# Aspects
mods.thaumcraft.Aspects.set(<ThaumicHorizons:brainTH>, "cognitio 27, corpus 13, exanimis 13"); // Lump of Brain
