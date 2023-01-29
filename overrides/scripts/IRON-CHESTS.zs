// Recipes for Iron Chests

val chest = <ore:chestWood>;

val iron = <ore:iron_ingot>;
val ironBlock = <ore:iron_block>;
val copper = <ore:ingotCopper>;
val copperBlock = <ore:blockCopper>;

val copperChest = <IronChest:BlockIronChest:3>;
val ironChest = <IronChest:BlockIronChest:0>;
val goldChest = <IronChest:BlockIronChest:1>;
val diamChest = <IronChest:BlockIronChest:2>;

# Chests

// Coffre en cuivre
recipes.remove(copperChest);
recipes.addShaped(copperChest,
/* Input        */[[copper, copperBlock, copper],
                   [copper, chest, copper],
                   [copper, copper, copper]]);

