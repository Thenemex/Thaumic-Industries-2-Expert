// Recipes for Botania

import minetweaker.item.IItemStack;

val livingWoodTwig = <Botania:manaResource:3>;
val manasteelNugg = <Botania:manaResource:17>;
val manasteel = <Botania:manaResource:0>;

val manaSword = <Botania:manasteelSword>;
val manaPick = <Botania:manasteelPick>;
val manaAxe = <Botania:manasteelAxe>;
val manaShov = <Botania:manasteelShovel>;

var manaToolsArray = [manaSword, manaPick, manaAxe, manaShov] as IItemStack[];
var mysticFlowerArray = [<Botania:flower:0>, <Botania:flower:1>, <Botania:flower:2>, <Botania:flower:3>, <Botania:flower:4>, <Botania:flower:5>, <Botania:flower:6>, <Botania:flower:7>, <Botania:flower:8>, <Botania:flower:9>, <Botania:flower:10>, <Botania:flower:11>, <Botania:flower:12>, <Botania:flower:13>, <Botania:flower:14>, <Botania:flower:15>] as IItemStack[];
var mysticFlowerDoubleArray = [<Botania:doubleFlower1:0>, <Botania:doubleFlower1:1>, <Botania:doubleFlower1:2>, <Botania:doubleFlower1:3>, <Botania:doubleFlower1:4>, <Botania:doubleFlower1:5>, <Botania:doubleFlower1:6>, <Botania:doubleFlower1:7>, <Botania:doubleFlower2:0>, <Botania:doubleFlower2:1>, <Botania:doubleFlower2:2>, <Botania:doubleFlower2:3>, <Botania:doubleFlower2:4>, <Botania:doubleFlower2:5>, <Botania:doubleFlower2:6>, <Botania:doubleFlower2:7>] as IItemStack[];

# Aspects
for i, el_mysticFlower in mysticFlowerArray {
    mods.thaumcraft.Aspects.set(el_mysticFlower, "herba 2, lux 2, sensus 3, victus 1"); }
for i, el_mysticFlowerDouble in mysticFlowerDoubleArray {
    mods.thaumcraft.Aspects.set(el_mysticFlowerDouble, "herba 4, lux 3, sensus 5, victus 2"); }

# Tools
for i, el_manaTool in manaToolsArray {
    recipes.remove(el_manaTool); }

// Manasteel Sword
recipes.addShaped(manaSword, [[null, null, manasteel], 
                              [manasteelNugg, manasteel, null],
                              [livingWoodTwig, manasteelNugg, null]] );

// Manasteel Pickaxe
recipes.addShaped(manaPick, [[manasteelNugg, manasteel, manasteel], 
                              [null, livingWoodTwig, manasteel],
                              [livingWoodTwig, null, manasteelNugg]] );
// Manasteel Axe
recipes.addShaped(manaAxe, [[manasteel, manasteel, manasteelNugg], 
                              [manasteel, livingWoodTwig, null],
                              [null, livingWoodTwig, null]] );
// Manasteel Shovel
recipes.addShaped(manaShov, [[null, manasteelNugg, manasteel], 
                              [null, livingWoodTwig, manasteelNugg],
                              [livingWoodTwig, null, null]] );
