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
