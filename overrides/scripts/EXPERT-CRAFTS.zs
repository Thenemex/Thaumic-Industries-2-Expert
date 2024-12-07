// Expert recipes for Minecraft Vanilla, with brand new TC tab
import minetweaker.item.IItemStack;

# Adding new oredict for Thaumcraft shards
val oreDictShards = <ore:thaumcraftShards>;
oreDictShards.add(<Thaumcraft:ItemShard:0>);
oreDictShards.add(<Thaumcraft:ItemShard:1>);
oreDictShards.add(<Thaumcraft:ItemShard:2>);
oreDictShards.add(<Thaumcraft:ItemShard:3>);
oreDictShards.add(<Thaumcraft:ItemShard:4>);
oreDictShards.add(<Thaumcraft:ItemShard:5>);
oreDictShards.add(<Thaumcraft:ItemShard:6>);

# Editing item crafts
// 1 Wood -> 2 Planks
val logsArray = [<minecraft:log:0>, <minecraft:log:1>, <minecraft:log:2>, <minecraft:log:3>, <minecraft:log2:0>, <minecraft:log2:1>, <Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMagicalLog:1>] as IItemStack[];
val planksArray = [<minecraft:planks:0>, <minecraft:planks:1>, <minecraft:planks:2>, <minecraft:planks:3>, <minecraft:planks:4>,<minecraft:planks:5>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:7>] as IItemStack[];
for i, el_plank in planksArray {
    var log = logsArray[i];
    recipes.remove(el_plank);
    recipes.addShapeless(el_plank * 2, [log]); }

// 2 Planks -> 2 Sticks
recipes.remove(<minecraft:stick>);
recipes.addShapedMirrored(<minecraft:stick> * 2, [[<ore:plankWood>, null],
                                          [<ore:plankWood>, null]] );

// 1 Iron ore + 1 Coal + 1 Flint + 1 Clay -> 1 Iron Nugget
recipes.addShapeless(<Thaumcraft:ItemNugget:0>, [<minecraft:clay_ball>, <minecraft:flint>,
                                                 <minecraft:iron_ore>, <minecraft:coal>] );
