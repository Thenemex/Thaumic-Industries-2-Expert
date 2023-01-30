// Recipes for Minecraft Vanilla

import minetweaker.item.IItemStack;

val oak = <minecraft:log:0>;
val spruce = <minecraft:log:1>;
val birch = <minecraft:log:2>;
val jungle = <minecraft:log:3>;
val acacia = <minecraft:log2:0>;
val darkOak = <minecraft:log2:1>;

var woodArray = [oak, spruce, birch, jungle, acacia, darkOak] as IItemStack[];

val oreDict_logWood = <ore:logWood>;

val charcoal = <minecraft:coal:1>;

# Ore Dictionnary
// Wood logs
oreDict_logWood.add(oak);
oreDict_logWood.add(spruce);
oreDict_logWood.add(birch);

# Burning Woods/Fire into Charcoal
for i, el_wood in woodArray {
    furnace.remove(<*>, el_wood);
    furnace.addRecipe(charcoal, el_wood); }
