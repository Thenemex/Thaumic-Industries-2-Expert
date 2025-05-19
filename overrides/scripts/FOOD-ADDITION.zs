// Recipes for Food items

import minetweaker.item.IItemStack;

// Array of all raw meats
val rawMeatArray = [<minecraft:porkchop>,
                    <minecraft:beef>,
                    <minecraft:chicken>,
                    <minecraft:fish:0>,
                    <minecraft:fish:1>,
                    <minecraft:fish:2>,
                    <foodaddition:RawMutton>,
                    <foodaddition:RawHorse>,
                    <foodaddition:RawCalamari>,
                    <foodaddition:RawWolf>,] as IItemStack[];
// Array of all cooked meats
val cookedMeatArray = [<minecraft:cooked_porkchop>,
                       <minecraft:cooked_beef>,
                       <minecraft:cooked_chicken>,
                       <minecraft:cooked_fished:0>,
                       <minecraft:cooked_fished:1>,
                       <minecraft:cooked_fished:2>,
                       <foodaddition:CookedMutton>,
                       <foodaddition:CookedHorse>,
                       <foodaddition:CookedCalamari>,
                       <foodaddition:CookedWolf>,] as IItemStack[];

# Cooking meat in early-game (without furnace)
// Adding research in artifice
mods.thaumcraft.Research.addResearch("EARLYCOOKING",
/* TabKey                         */ "ARTIFICE",
/* AspectList                     */ "ignis 5, potentia 5, fames 10",
/* X                              */ 0,
/* Y                              */ -5,
/* Complexity                     */ 0,
/* ItemStack                      */ <minecraft:porkchop>);
game.setLocalization("tc.research_name.EARLYCOOKING", "Early cooking");
game.setLocalization("tc.research_text.EARLYCOOKING", "Vegetables are good for health");
mods.thaumcraft.Research.addPage("EARLYCOOKING", "tnmx.artifice.earlycooking_1");
game.setLocalization("tnmx.artifice.earlycooking_1", "Well you just spawned in this damned world, and you can't make a furnace yet ... But you have a book and a wand filled with some vis !<BR> By focusing a bit of your Ignis vis into a bunch of raw meats and some coal, you found a way to cooked a small amount of food (with loss in the process).<LINE> If you're willing to sacrifice some Fire Shards in the process, it doubles the output of cooked meat !");
// Adding the recipes
for i, el_rawMeat in rawMeatArray {
    var cookedMeat = cookedMeatArray[i];
// 4 Raw Meat + 1 Coal = 1 Cooked meat (2 ignis vis)
    mods.thaumcraft.Arcane.addShaped("EARLYCOOKING",
    /* Output                     */ cookedMeat * 2,
    /* Aspects                    */ "ignis 2",
    /* InputArray                 */ [[el_rawMeat, el_rawMeat, el_rawMeat],
                                      [el_rawMeat, <minecraft:coal>, el_rawMeat],
                                      [el_rawMeat, el_rawMeat, el_rawMeat]] ); }
mods.thaumcraft.Research.addArcanePage("EARLYCOOKING", <minecraft:cooked_porkchop>);
// Prereqs
mods.thaumcraft.Research.setRound("EARLYCOOKING", true);
mods.thaumcraft.Research.setAutoUnlock("EARLYCOOKING", true);
