// Recipes for Botania

import minetweaker.item.IItemStack;

// Array of the Mystic Flowers
val mysticFlowerArray = [<Botania:flower:0>, <Botania:flower:1>, <Botania:flower:2>, <Botania:flower:3>, <Botania:flower:4>, <Botania:flower:5>, <Botania:flower:6>, <Botania:flower:7>, <Botania:flower:8>, <Botania:flower:9>, <Botania:flower:10>, <Botania:flower:11>, <Botania:flower:12>, <Botania:flower:13>, <Botania:flower:14>, <Botania:flower:15>] as IItemStack[];
// Array of the Tall Mystic Flowers
val mysticFlowerDoubleArray = [<Botania:doubleFlower1:0>, <Botania:doubleFlower1:1>, <Botania:doubleFlower1:2>, <Botania:doubleFlower1:3>, <Botania:doubleFlower1:4>, <Botania:doubleFlower1:5>, <Botania:doubleFlower1:6>, <Botania:doubleFlower1:7>, <Botania:doubleFlower2:0>, <Botania:doubleFlower2:1>, <Botania:doubleFlower2:2>, <Botania:doubleFlower2:3>, <Botania:doubleFlower2:4>, <Botania:doubleFlower2:5>, <Botania:doubleFlower2:6>, <Botania:doubleFlower2:7>] as IItemStack[];
// Array of Mystical Petals
val petalsArray = [<Botania:petal:0>, <Botania:petal:1>, <Botania:petal:2>, <Botania:petal:3>, <Botania:petal:4>, <Botania:petal:5>, <Botania:petal:6>, <Botania:petal:7>, <Botania:petal:8>, <Botania:petal:9>, <Botania:petal:10>, <Botania:petal:11>, <Botania:petal:12>, <Botania:petal:13>, <Botania:petal:14>, <Botania:petal:15>] as IItemStack[];
// Array of Petal Blocks
val petalBlocksArray = [<Botania:petalBlock:0>, <Botania:petalBlock:1>, <Botania:petalBlock:2>, <Botania:petalBlock:3>, <Botania:petalBlock:4>, <Botania:petalBlock:5>, <Botania:petalBlock:6>, <Botania:petalBlock:7>, <Botania:petalBlock:8>, <Botania:petalBlock:9>, <Botania:petalBlock:10>, <Botania:petalBlock:11>, <Botania:petalBlock:12>, <Botania:petalBlock:13>, <Botania:petalBlock:14>, <Botania:petalBlock:15>] as IItemStack[];
// Array of Buried Petals
val buriedPetalsArray = [<Botania:buriedPetals:0>, <Botania:buriedPetals:1>, <Botania:buriedPetals:2>, <Botania:buriedPetals:3>, <Botania:buriedPetals:4>, <Botania:buriedPetals:5>, <Botania:buriedPetals:6>, <Botania:buriedPetals:7>, <Botania:buriedPetals:8>, <Botania:buriedPetals:9>, <Botania:buriedPetals:10>, <Botania:buriedPetals:11>, <Botania:buriedPetals:12>, <Botania:buriedPetals:13>, <Botania:buriedPetals:14>, <Botania:buriedPetals:15>] as IItemStack[];

# Aspects
// Flowers
for i, el_mysticFlower in mysticFlowerArray {
    mods.thaumcraft.Aspects.set(el_mysticFlower, "herba 2, sensus 3, victus 1"); }
// Double flowers
for i, el_mysticFlowerDouble in mysticFlowerDoubleArray {
    mods.thaumcraft.Aspects.set(el_mysticFlowerDouble, "herba 4, sensus 5, victus 2"); }
// Mystical Petals
for i, el_petal in petalsArray {
    mods.thaumcraft.Aspects.set(el_petal, "herba 2, sensus 1"); }
// Petal blocks
for i, el_petalBlock in petalBlocksArray {
    mods.thaumcraft.Aspects.set(el_petalBlock, "herba 13, sensus 6");}
// Buried Petals
for i, el_buriedPetal in buriedPetalsArray {
    mods.thaumcraft.Aspects.set(el_buriedPetal, "herba 2, sensus 1"); }
