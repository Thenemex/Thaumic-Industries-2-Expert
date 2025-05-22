// Recipes for the expert path around wood logs-planks-scripts

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

# Adding new oreDict for mundane wood planks
val oreDictMundaneWoodPlanks = <ore:mundaneWoodPlanks>;
for i, el_mundanePlank in planksArray {
    oreDictMundaneWoodPlanks.add(el_mundanePlank); }

# Adding new oreDict for magical wood planks
val oreDictMagicalWoodPlanks = <ore:magicalWoodPlanks>;
for i, el_magicalPlank in magicalPlanksArray {
    oreDictMagicalWoodPlanks.add(el_magicalPlank); }

# Basic recipes
// 1 Log -> 1 Plank
for i, el_plank in planksArray {
    recipes.remove(el_plank);
    recipes.addShapeless(el_plank * 1, [logsArray[i]]);
}
// 1 Magical Log = 2 Plank
for i, el_plank in magicalPlanksArray {
    recipes.remove(el_plank);
    recipes.addShapeless(el_plank * 2, [magicalLogsArray[i]]);
}
recipes.addShapeless(<minecraft:planks:1> * 2, [<thaumicbases:genLogs:1>]); // Nether [TB]
recipes.addShapeless(<minecraft:planks:2> * 2, [<thaumicbases:genLogs:0>]); // Peaceful [TB]
// 2 Planks -> 1 Stick
recipes.remove(<minecraft:stick>);
recipes.addShapedMirrored(<minecraft:stick> * 1,
                          [[oreDictMundaneWoodPlanks, null],
                           [oreDictMundaneWoodPlanks, null]]);
// 2 Magical Planks = 2 Sticks
recipes.addShapedMirrored(<minecraft:stick> * 2,
                          [[oreDictMagicalWoodPlanks, null],
                           [oreDictMagicalWoodPlanks, null]]);

# Wandcraft recipes
// Adding the auto-unlocked research
mods.thaumcraft.Research.addResearch("WOOD_WANDCRAFT",
/* TabKey                         */ "ARTIFICE",
/* AspectList                     */ "arbor 5, fabrico 5, terra 5",
/* X                              */ -2,
/* Y                              */ -1,
/* Complexity                     */ 0,
/* ItemStack                      */ <minecraft:stick>);
game.setLocalization("tc.research_name.WOOD_WANDCRAFT", "Making planks");
game.setLocalization("tc.research_text.WOOD_WANDCRAFT", "More sticks !");
mods.thaumcraft.Research.addPage("WOOD_WANDCRAFT", "tnmx.artifice.wood_wandcraft_1");
game.setLocalization("tnmx.artifice.wood_wandcraft_1", "Damn these trees, the logs are so poor they only give so little when transformed to planks and sticks ...<BR> When using some terra vis from you wand, you can almost double the amount you got from mundane and magical logs !<LINE>NB : If you make sticks from magical planks, it will the same amount as the magical logs (3 sticks)");
// 1 Log -> 2 Planks
for i, el_plank in planksArray {
    mods.thaumcraft.Arcane.addShapeless("WOOD_WANDCRAFT",
    /* Output                        */ el_plank * 2,
    /* Aspects                       */ "terra 1",
    /* InputArray                    */ [logsArray[i]] ); }
mods.thaumcraft.Research.addArcanePage("WOOD_WANDCRAFT", <minecraft:planks:0>);
// 2 Planks -> 2 Sticks
for i, el_plank in planksArray {
    mods.thaumcraft.Arcane.addShaped("WOOD_WANDCRAFT",
    /* Output                     */ <minecraft:stick> * 2,
    /* Aspects                    */ "perditio 1",
    /* InputArray                 */ [[el_plank, null, null],
                                      [el_plank, null, null],
                                      [null, null, null]] ); }
mods.thaumcraft.Research.addArcanePage("WOOD_WANDCRAFT", <minecraft:stick>);
// 1 Magical Log -> 3 Planks
for i, el_plank in magicalPlanksArray {
    mods.thaumcraft.Arcane.addShapeless("WOOD_WANDCRAFT",
    /* Output                        */ el_plank * 3,
    /* Aspects                       */ "terra 1",
    /* InputArray                    */ [magicalLogsArray[i]] ); }
mods.thaumcraft.Research.addArcanePage("WOOD_WANDCRAFT", <Thaumcraft:blockWoodenDevice:6>);
// 2 Magical Planks -> 3 Sticks
for i, el_plank in magicalPlanksArray {
    mods.thaumcraft.Arcane.addShaped("WOOD_WANDCRAFT",
    /* Output                     */ <minecraft:stick> * 3,
    /* Aspects                    */ "perditio 1",
    /* InputArray                 */ [[el_plank, null, null],
                                      [el_plank, null, null],
                                      [null, null, null]] ); }

# Crucible recipes
// ToDo+

// Prereqs
mods.thaumcraft.Research.setRound("WOOD_WANDCRAFT", true);
mods.thaumcraft.Research.setAutoUnlock("WOOD_WANDCRAFT", true);
mods.thaumcraft.Research.addPrereq("WOOD_WANDCRAFT", "ARCTABLE", false);

# Burning Woods/Fire into Charcoal - Patching charcoal dupe bug
for i, el_wood in logsArray {
    furnace.remove(<*>, el_wood);
    furnace.addRecipe(<minecraft:coal:1>, el_wood); }
