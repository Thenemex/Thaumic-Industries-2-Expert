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
// Array of stairs
val stairsArray = [<minecraft:oak_stairs>, // Vanilla
                   <minecraft:spruce_stairs>,
                   <minecraft:birch_stairs>,
                   <minecraft:jungle_stairs>,
                   <minecraft:acacia_stairs>,
                   <minecraft:dark_oak_stairs>,
                   <minecraft:stone_stairs>,
                   <minecraft:stone_brick_stairs>,
                   <minecraft:brick_stairs>,
                   <minecraft:sandstone_stairs>,
                   <minecraft:quartz_stairs>,
                   <minecraft:nether_brick_stairs>,
                   <Thaumcraft:blockStairsGreatwood>, // Thaumcraft
                   <Thaumcraft:blockStairsSilverwood>,
                   <Thaumcraft:blockStairsArcaneStone>] as IItemStack[];
val stairsComponentArray = [<minecraft:planks:0>, // Vanilla
                            <minecraft:planks:1>,
                            <minecraft:planks:2>,
                            <minecraft:planks:3>,
                            <minecraft:planks:4>,
                            <minecraft:planks:5>,
                            <minecraft:cobblestone>,
                            <minecraft:stonebrick:0>,
                            <minecraft:brick_block>,
                            <minecraft:sandstone>,
                            <minecraft:quartz_block:0>,
                            <minecraft:nether_brick>,
                            <Thaumcraft:blockWoodenDevice:6>, // Thaumcraft
                            <Thaumcraft:blockWoodenDevice:7>,
                            <Thaumcraft:blockCosmeticSolid:7>] as IItemStack[];
// Array of stained glass panes
val stainedGlassPaneArray = [<minecraft:stained_glass_pane:0>,
                             <minecraft:stained_glass_pane:1>,
                             <minecraft:stained_glass_pane:2>,
                             <minecraft:stained_glass_pane:3>,
                             <minecraft:stained_glass_pane:4>,
                             <minecraft:stained_glass_pane:5>,
                             <minecraft:stained_glass_pane:6>,
                             <minecraft:stained_glass_pane:7>,
                             <minecraft:stained_glass_pane:8>,
                             <minecraft:stained_glass_pane:9>,
                             <minecraft:stained_glass_pane:10>,
                             <minecraft:stained_glass_pane:11>,
                             <minecraft:stained_glass_pane:12>,
                             <minecraft:stained_glass_pane:13>,
                             <minecraft:stained_glass_pane:14>,
                             <minecraft:stained_glass_pane:15> ] as IItemStack[];

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

# Adding an oreDict for both Coal types
val oreDictAllCoals = <ore:allCoals>;
oreDictAllCoals.add(<minecraft:coal:0>);
oreDictAllCoals.add(<minecraft:coal:1>);

# Adding new oreDict for mundane wood planks
val oreDictMundaneWoodPlanks = <ore:mundaneWoodPlanks>;
for i, el_mundanePlank in planksArray {
    oreDictMundaneWoodPlanks.add(el_mundanePlank); }

# Adding new oreDict for magical wood planks
val oreDictMagicalWoodPlanks = <ore:magicalWoodPlanks>;
for i, el_magicalPlank in magicalPlanksArray {
    oreDictMagicalWoodPlanks.add(el_magicalPlank); }

# Editing item crafts
// 1 Chest = 8 Greatwood Logs / 8 Silverwood Planks
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>,
                  [[<ore:logWood>, <ore:plankWood>, <ore:logWood>],
                   [<ore:plankWood>, <minecraft:iron_block>, <ore:plankWood>],
                   [<ore:logWood>, <ore:plankWood>, <ore:logWood>]]);
recipes.addShaped(<minecraft:chest> * 2,
                  [[<Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMagicalLog:0>],
                   [<Thaumcraft:blockMagicalLog:0>, null, <Thaumcraft:blockMagicalLog:0>],
                   [<Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMagicalLog:0>]]);
recipes.addShaped(<minecraft:chest>,
                  [[<Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>],
                   [<Thaumcraft:blockWoodenDevice:7>, null, <Thaumcraft:blockWoodenDevice:7>],
                   [<Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>]]);

// 1 Wood -> 2 Planks
for i, el_plank in planksArray {
    recipes.remove(el_plank);
    recipes.addShapeless(el_plank * 2, [logsArray[i]]); }

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
                                                 <minecraft:iron_ore>, <ore:allCoals>] );

// 1 Clay Block = 4 Clay
recipes.addShapeless(<minecraft:clay_ball> * 4, [<minecraft:clay>]);

// 1 Block of Flesh = 9 Rotten Flesh
recipes.addShapeless(<minecraft:rotten_flesh> * 9, [<Thaumcraft:blockTaint:2>]);

// Stairs
for i, el_component in stairsComponentArray {
    recipes.remove(stairsArray[i]);
    recipes.addShapedMirrored(stairsArray[i] * 8,
                              [[el_component, null, null],
                              [el_component, el_component, null],
                              [el_component, el_component, el_component]]); }

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
// Stained Glass Pane
for i, el_glassPane in stainedGlassPaneArray {
    mods.thaumcraft.Aspects.set(el_glassPane, "vitreus 1"); }

mods.thaumcraft.Aspects.set(<minecraft:cobblestone_wall:0>, "terra 1, perditio 1"); // Cobblestone Wall
mods.thaumcraft.Aspects.set(<minecraft:cobblestone_wall:1>, "terra 1, herba 1"); // Mossy Cobblestone Wall
mods.thaumcraft.Aspects.set(<minecraft:stone_stairs>, "terra 1, perditio 1"); // Stone Stairs
mods.thaumcraft.Aspects.set(<minecraft:stone_slab:3>, "terra 1, perditio 1"); // Cobblestone
mods.thaumcraft.Aspects.set(<minecraft:stone_slab:5>, "terra 1"); // Stone Bricks
mods.thaumcraft.Aspects.set(<minecraft:stone_slab:0>, "terra 1"); // Stone
mods.thaumcraft.Aspects.set(<minecraft:stone_slab:6>, "terra 1, ignis 1"); // Nether Brick
mods.thaumcraft.Aspects.set(<minecraft:lit_pumpkin>, "messis 1, lux 1"); // Jack o Lantern

mods.thaumcraft.Aspects.set(<minecraft:anvil:1>, "metallum 32, fabrico 1, instrumentum 1, perditio 1"); // Slightly Damaged Anvil
mods.thaumcraft.Aspects.set(<minecraft:anvil:2>, "metallum 16, perditio 4"); // Very Damaged Anvil

mods.thaumcraft.Aspects.set(<minecraft:stone_pressure_plate>, "machina 1, sensus 1, terra 1"); // Pressure Plate
mods.thaumcraft.Aspects.set(<minecraft:redstone_torch>, "potentia 1, machina 1"); // Redstone Torch
mods.thaumcraft.Aspects.set(<minecraft:wooden_button>, "machina 1, arbor 1"); // Button
mods.thaumcraft.Aspects.set(<minecraft:fence_gate>, "arbor 4, machina 1, motus 1"); // Fence Gate
mods.thaumcraft.Aspects.set(<minecraft:comparator>, "terra 4, potentia 2, machina 2"); // Redstone Comparator

mods.thaumcraft.Aspects.set(<minecraft:experience_bottle>, "cognitio 8"); // Bottle o Enchanting
mods.thaumcraft.Aspects.set(<minecraft:map>, "cognitio 4, iter 2"); // Empty Map
mods.thaumcraft.Aspects.set(<minecraft:firework_charge>, "ignis 2, perditio 2, sensus 1"); // Firework Charge
mods.thaumcraft.Aspects.set(<minecraft:fireworks>, "ignis 2, perditio 2, motus 2"); // Firework Rocket
