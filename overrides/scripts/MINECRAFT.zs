// Recipes for Minecraft Vanilla

import minetweaker.item.IItemStack;

val charcoal = <minecraft:coal:1>;

// Array of all the 6 vanilla woods (oak, spruce, birch, jungle, acacia, darkOak)
var woodArray = [<minecraft:log:0>,
                 <minecraft:log:1>,
                 <minecraft:log:2>,
                 <minecraft:log:3>, 
                 <minecraft:log2:0>, 
                 <minecraft:log2:1>] as IItemStack[];
// Array of all >iron tools
var vanillaToolsArray = [<minecraft:iron_sword>,
                         <minecraft:iron_pickaxe>,
                         <minecraft:iron_axe>,
                         <minecraft:iron_shovel>,
                         <minecraft:iron_hoe>,
                         <minecraft:golden_sword>,
                         <minecraft:golden_pickaxe>,
                         <minecraft:golden_axe>,
                         <minecraft:golden_shovel>,
                         <minecraft:golden_hoe>,
                         <minecraft:diamond_sword>,
                         <minecraft:diamond_pickaxe>,
                         <minecraft:diamond_axe>,
                         <minecraft:diamond_shovel>,
                         <minecraft:diamond_hoe>,
                         <minecraft:shears>] as IItemStack[];
var vanillaArmorArray = [<minecraft:iron_helmet>,
                         <minecraft:iron_chestplate>,
                         <minecraft:iron_leggings>,
                         <minecraft:iron_boots>,
                         <minecraft:golden_helmet>,
                         <minecraft:golden_chestplate>,
                         <minecraft:golden_leggings>,
                         <minecraft:golden_boots>,
                         <minecraft:diamond_helmet>,
                         <minecraft:diamond_chestplate>,
                         <minecraft:diamond_leggings>,
                         <minecraft:diamond_boots>,
                         <minecraft:bow>] as IItemStack[];

val oreDict_logWood = <ore:logWood>;

# Adding missing vanilla logs to OreDict logWood
oreDict_logWood.add(<minecraft:log:0>);
oreDict_logWood.add(<minecraft:log:1>);
oreDict_logWood.add(<minecraft:log:2>);

# Burning Woods/Fire into Charcoal - Patching charcoal dupe bug
for i, el_wood in woodArray {
    furnace.remove(<*>, el_wood);
    furnace.addRecipe(charcoal, el_wood); }
    
# Setting vanilla Tools & Armor durability to very low - Have to use magical tools (Thaumium, etc...)
for i, el_tool in vanillaToolsArray {
    el_tool.maxDamage = 1;
    el_tool.addTooltip(format.red("FOR CRAFTING ONLY"));
    el_tool.addTooltip(format.green("Find a magical way instead !")); }
for i, el_armor in vanillaArmorArray {
    el_armor.maxDamage = 10;
    el_armor.addTooltip(format.red("FOR CRAFTING ONLY"));
    el_armor.addTooltip(format.green("Find a magical way instead !")); }
