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
