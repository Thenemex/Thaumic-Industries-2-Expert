// Recipes for Thaumcraft

import minetweaker.item.IItemStack;

// Array of the six primal shards
val shardsArray = [<Thaumcraft:ItemShard:0>,
                   <Thaumcraft:ItemShard:1>,
                   <Thaumcraft:ItemShard:2>,
                   <Thaumcraft:ItemShard:3>,
                   <Thaumcraft:ItemShard:4>,
                   <Thaumcraft:ItemShard:5>]  as IItemStack[];
// Array of the six primal shard clusters
val clustersArray = [<Thaumcraft:blockCrystal:0>,
                     <Thaumcraft:blockCrystal:1>,
                     <Thaumcraft:blockCrystal:2>,
                     <Thaumcraft:blockCrystal:3>,
                     <Thaumcraft:blockCrystal:4>,
                     <Thaumcraft:blockCrystal:5>] as IItemStack[];

# Recipes
// 1 Cluster -> 6 Shards
for i, el_shard in shardsArray {
    recipes.addShapeless(el_shard * 6, [clustersArray[i]]); }

# Aspects
mods.thaumcraft.Aspects.set(<Thaumcraft:ItemNugget:7>, "metallum 1"); // Voidmetal Nugget
