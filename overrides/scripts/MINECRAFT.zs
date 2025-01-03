// Recipes for Minecraft Vanilla

import minetweaker.item.IItemStack;

// Array of all the 6 vanilla woods (oak, spruce, birch, jungle, acacia, darkOak)
val logsArray = [<minecraft:log:0>,
                 <minecraft:log:1>,
                 <minecraft:log:2>,
                 <minecraft:log:3>,
                 <minecraft:log2:0>,
                 <minecraft:log2:1>] as IItemStack[];
// Array of all the 6 vanilla planks
val planksArray = [<minecraft:planks:0>,
                   <minecraft:planks:1>,
                   <minecraft:planks:2>,
                   <minecraft:planks:3>,
                   <minecraft:planks:4>,
                   <minecraft:planks:5>] as IItemStack[];
// Array of magical wood logs
val magicalLogsArray = [<Thaumcraft:blockMagicalLog:0>, // Greatwood
                        <Thaumcraft:blockMagicalLog:1>, // Silverwood
                        <ForbiddenMagic:TaintLog>, // Tainted [FB]
                        <TaintedMagic:BlockWarpwoodLog>, // Warpwood [TM]
                        <thaumicbases:genLogs:2>, // Ender [TB]
                        ] as IItemStack[];
// Array of magical wood planks (associated with their log upper)
val magicalPlanksArray = [<Thaumcraft:blockWoodenDevice:6>, // Greatwood
                          <Thaumcraft:blockWoodenDevice:7>, // Silverwood
                          <ForbiddenMagic:TaintPlank>, // Tainted [FB]
                          <TaintedMagic:BlockWarpwoodPlanks>, // Warpwood [TM]
                          <thaumicbases:enderPlanks>, // Ender [TB]
                          ] as IItemStack[];

// Array of iron tools
val ironArray = [<minecraft:iron_sword>,
                 <minecraft:iron_pickaxe>,
                 <minecraft:iron_axe>,
                 <minecraft:iron_shovel>,
                 <minecraft:iron_hoe>] as IItemStack[];
// Array of all >iron tools
val toolsArray = [<minecraft:golden_sword>,
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
val armorArray = [<minecraft:iron_helmet>,
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

# Adding missing vanilla logs to OreDict logWood
val oreDict_logWood = <ore:logWood>;
oreDict_logWood.add(<minecraft:log:0>);
oreDict_logWood.add(<minecraft:log:1>);
oreDict_logWood.add(<minecraft:log:2>);

# Added new oreDict for mundane wood planks
val oreDictMundaneWoodPlanks = <ore:mundaneWoodPlanks>;
for i, el_mundanePlank in planksArray {
    oreDictMundaneWoodPlanks.add(el_mundanePlank); }

# Added new oreDict for magical wood planks
val oreDictMagicalWoodPlanks = <ore:magicalWoodPlanks>;
for i, el_magicalPlank in magicalPlanksArray {
    oreDictMagicalWoodPlanks.add(el_magicalPlank); }

# Editing item crafts
// 1 Chest = 8 Greatwood / Silverwood Planks
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>,
                  [[<Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockMagicalLog:0>],
                   [<Thaumcraft:blockWoodenDevice:6>, null, <Thaumcraft:blockWoodenDevice:6>],
                   [<Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockMagicalLog:0>]]);
recipes.addShaped(<minecraft:chest>,
                  [[<Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>],
                   [<Thaumcraft:blockWoodenDevice:7>, null, <Thaumcraft:blockWoodenDevice:7>],
                   [<Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>]]);

// 1 Wood -> 2 Planks
for i, el_plank in planksArray {
    var log = logsArray[i];
    recipes.remove(el_plank);
    recipes.addShapeless(el_plank * 2, [log]); }

// 1 Magical Wood = 3 Planks
for i, el_plank in magicalPlanksArray {
    var log = magicalLogsArray[i];
    recipes.remove(el_plank);
    recipes.addShapeless(el_plank * 3, [log]); }
recipes.addShapeless(<minecraft:planks:1> * 3, [<thaumicbases:genLogs:1>]); // Nether [TB]
recipes.addShapeless(<minecraft:planks:2> * 3, [<thaumicbases:genLogs:0>]); // Peaceful [TB]

// 2 Planks -> 2 Sticks
recipes.remove(<minecraft:stick>);
recipes.addShapedMirrored(<minecraft:stick> * 2,
                          [[oreDictMundaneWoodPlanks, null],
                           [oreDictMundaneWoodPlanks, null]]);
// 2 Magical Planks = 3 Sticks
recipes.addShapedMirrored(<minecraft:stick> * 3,
                          [[oreDictMagicalWoodPlanks, null],
                           [oreDictMagicalWoodPlanks, null]]);

// 1 Iron ore + 1 Coal + 1 Flint + 1 Clay -> 1 Iron Nugget
recipes.addShapeless(<Thaumcraft:ItemNugget:0>, [<minecraft:clay_ball>, <minecraft:flint>,
                                                 <minecraft:iron_ore>, <minecraft:coal>] );

# Making paper in by hand (2x2 Shapeless)
recipes.remove(<minecraft:paper>);
recipes.addShapeless(<minecraft:paper> * 3,
                     [<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>]);

# Wood slab bug with oreDict :
// Added the three lines on the crafting table
recipes.remove(<minecraft:wooden_slab:0>);
recipes.addShaped(<minecraft:wooden_slab:0> * 6,
                  [[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>],
                   [null, null, null],
                   [null, null, null]]);
recipes.addShaped(<minecraft:wooden_slab:0> * 6,
                  [[null, null, null],
                   [<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>],
                   [null, null, null]]);
recipes.addShaped(<minecraft:wooden_slab:0> * 6,
                  [[null, null, null],
                   [null, null, null],
                   [<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>]]);

# Burning Woods/Fire into Charcoal - Patching charcoal dupe bug
for i, el_wood in logsArray {
    furnace.remove(<*>, el_wood);
    furnace.addRecipe(<minecraft:coal:1>, el_wood); }
    
# Reducing the output amount of crafted Smooth Sandstone
recipes.remove(<minecraft:sandstone:2>);
recipes.addShapedMirrored(<minecraft:sandstone:2>,
                          [[<ore:sandstone>, <ore:sandstone>],
                           [<ore:sandstone>, <ore:sandstone>]]);

# Gold Ingots can only be crafted with gold nuggets and not coins
recipes.remove(<minecraft:gold_ingot>);
recipes.addShaped(<minecraft:gold_ingot>,
                  [[<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>],
                   [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>],
                   [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>]]);
    
# Setting Iron tools to 15 durability
for i, el_ironTool in ironArray {
    el_ironTool.maxDamage = 15;
    el_ironTool.addTooltip(format.gold("You can only break a few blocks with this")); }

# Setting vanilla Tools & Armor durability to very low - Have to use magical tools (Thaumium, etc...)
for i, el_tool in toolsArray {
    el_tool.maxDamage = 1;
    el_tool.addTooltip(format.red("FOR CRAFTING ONLY"));
    el_tool.addTooltip(format.green("Find a magical way instead !")); }
for i, el_armor in armorArray {
    el_armor.maxDamage = 10;
    el_armor.addTooltip(format.red("FOR CRAFTING ONLY"));
    el_armor.addTooltip(format.green("Low durability, find a magical way instead !")); }
    
# Aspects
// Removing the Praecantatio in the Sculpted Sandstone
mods.thaumcraft.Aspects.set(<minecraft:sandstone:1>, "perditio 3, terra 3");
