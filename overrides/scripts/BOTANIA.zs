// Recipes for Botania

import minetweaker.item.IItemStack;

// Array of the Mystic Flowers
var mysticFlowerArray = [<Botania:flower:0>, <Botania:flower:1>, <Botania:flower:2>, <Botania:flower:3>, <Botania:flower:4>, <Botania:flower:5>, <Botania:flower:6>, <Botania:flower:7>, <Botania:flower:8>, <Botania:flower:9>, <Botania:flower:10>, <Botania:flower:11>, <Botania:flower:12>, <Botania:flower:13>, <Botania:flower:14>, <Botania:flower:15>] as IItemStack[];
// Array of the Tall Mystic Flowers
var mysticFlowerDoubleArray = [<Botania:doubleFlower1:0>, <Botania:doubleFlower1:1>, <Botania:doubleFlower1:2>, <Botania:doubleFlower1:3>, <Botania:doubleFlower1:4>, <Botania:doubleFlower1:5>, <Botania:doubleFlower1:6>, <Botania:doubleFlower1:7>, <Botania:doubleFlower2:0>, <Botania:doubleFlower2:1>, <Botania:doubleFlower2:2>, <Botania:doubleFlower2:3>, <Botania:doubleFlower2:4>, <Botania:doubleFlower2:5>, <Botania:doubleFlower2:6>, <Botania:doubleFlower2:7>] as IItemStack[];

# Aspects
for i, el_mysticFlower in mysticFlowerArray {
    mods.thaumcraft.Aspects.set(el_mysticFlower, "herba 2, sensus 3, victus 1"); }
for i, el_mysticFlowerDouble in mysticFlowerDoubleArray {
    mods.thaumcraft.Aspects.set(el_mysticFlowerDouble, "herba 4, sensus 5, victus 2"); }
