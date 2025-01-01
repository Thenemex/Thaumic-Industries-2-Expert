// Recipes for Thaumcraft - Golemancy GOLEMBELL

# Adding a craft to the vanilla Golem Bell
mods.thaumcraft.Arcane.addShaped("GOLEMBELL",
/* Output                     */ <Thaumcraft:GolemBell>,
/* Aspects                    */ "ordo 5",
/* InputArray                 */ [[null, <minecraft:quartz>, <minecraft:quartz>],
                                  [null, <minecraft:quartz>, <minecraft:quartz>],
                                  [<Thaumcraft:WandRod:0>, null, null]] );
mods.thaumcraft.Research.addArcanePage("GOLEMBELL", <Thaumcraft:GolemBell>);
// Prereqs (Greatwood Wand Core)
mods.thaumcraft.Research.addPrereq("GOLEMBELL", "ROD_greatwood", true);

# Hungry Chest
// Hungry Chest = 7 Greatwood Planks + 1 Item Grate
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockChestHungry>);
mods.thaumcraft.Arcane.addShaped("HUNGRYCHEST",
/* Output                     */ <Thaumcraft:blockChestHungry>,
/* Aspects                    */ "aer 10, ordo 5, perditio 5",
/* InputArray                 */ [[<Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMetalDevice:5>, <Thaumcraft:blockMagicalLog:0>],
                                  [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:ItemNugget:0>, <Thaumcraft:blockWoodenDevice:6>],
                                  [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>]] );
mods.thaumcraft.Research.refreshResearchRecipe("HUNGRYCHEST");
