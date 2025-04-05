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
mods.thaumcraft.Aspects.set(<Thaumcraft:blockFluxGas:0>, "aer 3, praecantatio 2, vitium 1"); // Flux Gas (Gaz)
mods.thaumcraft.Aspects.set(<Thaumcraft:blockFluidPure>, "auram 3, sano 3, ordo 2, aqua 2"); // Purifying Fluid
mods.thaumcraft.Aspects.set(<Thaumcraft:ItemBucketPure>, "auram 4, sano 4, ordo 3, aqua 3, metallum 4"); // Bucket of Purifying Fluid
mods.thaumcraft.Aspects.set(<Thaumcraft:blockFluidDeath>, "mortuus 4, venenum 4, perditio 4"); // Liquid Death

mods.thaumcraft.Aspects.set(<Thaumcraft:blockTube:0>, "aqua 1, metallum 1"); // Essentia Tube

mods.thaumcraft.Aspects.set(<Thaumcraft:blockCosmeticSolid:14>, "terra 1, alienis 1"); // Crusted Stone
mods.thaumcraft.Aspects.set(<Thaumcraft:blockCosmeticSolid:15>, "terra 1, alienis 1"); // Ancient Stone Pedestal
mods.thaumcraft.Aspects.set(<Thaumcraft:blockLootUrn:0>, "lucrum 8, alienis 1, terra 1, ignis 1"); // Old Urn (Common)
mods.thaumcraft.Aspects.set(<Thaumcraft:blockLootUrn:1>, "lucrum 16, alienis 1, terra 1, ignis 1"); // Old Urn (Uncommon)
mods.thaumcraft.Aspects.set(<Thaumcraft:blockLootUrn:2>, "lucrum 32, alienis 1, terra 1, ignis 1"); // Old Urn (Rare)
mods.thaumcraft.Aspects.set(<Thaumcraft:blockLootCrate:0>, "lucrum 8, alienis 1, arbor 1, metallum 1"); // Abandoned Crate (Common)
mods.thaumcraft.Aspects.set(<Thaumcraft:blockLootCrate:1>, "lucrum 16, alienis 1, arbor 1, metallum 1"); // Abandoned Crate (Uncommon)
mods.thaumcraft.Aspects.set(<Thaumcraft:blockLootCrate:2>, "lucrum 32, alienis 1, arbor 1, metallum 1"); // Abandoned Crate (Rare)


mods.thaumcraft.Aspects.set(<Thaumcraft:blockStairsGreatwood>, "arbor 1"); // Greatwood Stairs
mods.thaumcraft.Aspects.set(<Thaumcraft:blockStairsSilverwood>, "arbor 1"); // Silverwood Stairs
mods.thaumcraft.Aspects.set(<Thaumcraft:blockStairsArcaneStone>, "terra 1"); // Arcane Stone Stairs
mods.thaumcraft.Aspects.set(<Thaumcraft:blockStairsEldritch>, "terra 1"); // Ancient Stone Stairs
mods.thaumcraft.Aspects.set(<Thaumcraft:blockCosmeticSlabStone:0>, "terra 1"); // Arcane Stone Slab
mods.thaumcraft.Aspects.set(<Thaumcraft:blockCosmeticSlabStone:1>, "terra 1"); // Ancient Stone Slab

mods.thaumcraft.Aspects.set(<Thaumcraft:ItemNugget:7>, "metallum 1"); // Voidmetal Nugget

