// Recipes for Minecraft Vanilla

import minetweaker.item.IItemStack;

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

# Added new oreDict for magical wood planks
val oreDictMagicalWoodPlanks = <ore:magicalWoodPlanks>;
oreDictMagicalWoodPlanks.add(<Thaumcraft:blockWoodenDevice:6>); // Greatwood
oreDictMagicalWoodPlanks.add(<Thaumcraft:blockWoodenDevice:7>); // Silverwood
oreDictMagicalWoodPlanks.add(<ForbiddenMagic:TaintPlank>); // Tainted [FB]
oreDictMagicalWoodPlanks.add(<TaintedMagic:BlockWarpwoodPlanks>); // Warpwood [TM]
oreDictMagicalWoodPlanks.add(<thaumicbases:enderPlanks>); // Ender [TB]

# Editing item crafts
// 1 Magical Wood = 3 Planks
for i, el_plank in magicalPlanksArray {
    var log = magicalLogsArray[i];
    recipes.remove(el_plank);
    recipes.addShapeless(el_plank * 3, [log]); }
recipes.addShapeless(<minecraft:planks:1> * 3, [<thaumicbases:genLogs:1>]); // Nether [TB]
recipes.addShapeless(<minecraft:planks:2> * 3, [<thaumicbases:genLogs:0>]); // Peaceful [TB]

// 2 Magical Planks = 3 Sticks
// Recipes already removed in MINECRAFT.zs
recipes.addShapedMirrored(<minecraft:stick> * 3,
                          [[oreDictMagicalWoodPlanks, null],
                           [oreDictMagicalWoodPlanks, null]]);
