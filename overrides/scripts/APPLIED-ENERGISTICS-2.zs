// Recipes for Applied Energistics 2

import minetweaker.item.IItemStack;

val skystone = <appliedenergistics2:tile.BlockSkyStone:0>;
val skystoneBlock = <appliedenergistics2:tile.BlockSkyStone:1>;
val skystoneBrick = <appliedenergistics2:tile.BlockSkyStone:2>;
val skystoneSmallBrick = <appliedenergistics2:tile.BlockSkyStone:3>;

val skystoneStair = <appliedenergistics2:tile.SkyStoneStairBlock>;
val skystoneStairBlock = <appliedenergistics2:tile.SkyStoneBlockStairBlock>;
val skystoneStairBrick = <appliedenergistics2:tile.SkyStoneBrickStairBlock>;
val skystoneStairSmallBrick = <appliedenergistics2:tile.SkyStoneSmallBrickStairBlock>;

val skystoneSlab = <appliedenergistics2:tile.SkyStoneSlabBlock>;
val skystoneSlabBlock = <appliedenergistics2:tile.SkyStoneBlockSlabBlock>;
val skystoneSlabBrick = <appliedenergistics2:tile.SkyStoneBrickSlabBlock>;
val skystoneSlabSmallBrick = <appliedenergistics2:tile.SkyStoneSmallBrickSlabBlock>;

var skystoneBlockArray = [skystone, skystoneBlock, skystoneBrick, skystoneSmallBrick] as IItemStack[];
var skystoneStairsArray = [skystoneStair, skystoneStairBlock, skystoneStairBrick, skystoneStairSmallBrick] as IItemStack[];
var skystoneSlabArray = [skystoneSlab, skystoneSlabBlock, skystoneSlabBrick, skystoneSlabSmallBrick] as IItemStack[];

# Aspects
// Skystone
for i, el_skystoneBlock in skystoneBlockArray {
    mods.thaumcraft.Aspects.set(el_skystoneBlock, "perditio 1, terra 2, tenebrae 2"); }
for i, el_skystoneStairs in skystoneStairsArray {
    mods.thaumcraft.Aspects.set(el_skystoneStairs, "terra 2, tenebrae 1"); }
for i, el_skystoneSlab in skystoneSlabArray {
    mods.thaumcraft.Aspects.set(el_skystoneSlab, "terra 1, tenebrae 1"); }
