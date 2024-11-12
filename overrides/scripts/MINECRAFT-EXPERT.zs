// Expert recipes for Minecraft Vanilla, with brand new TC tab

# Adding a new tab in the Thaumonomicon
mods.thaumcraft.Research.addTab("VANILLA", "minecraft", "textures/blocks/crafting_table_front.png");
game.setLocalization("tc.research_category.VANILLA", "Minecraft");

# Adding an auto-unlock research for showing the vanilla crafts changes
// Adding the research
mods.thaumcraft.Research.addResearch("EXPERTCHANGES",
/* TabKey                         */ "VANILLA",
/* AspectList                     */ "",
/* X                              */ 0,
/* Y                              */ 0,
/* Complexity                     */ 0,
/* ItemStack                      */ <minecraft:book>);
game.setLocalization("tc.research_name.EXPERTCHANGES", "Expert Changes");
game.setLocalization("tc.research_text.EXPERTCHANGES", "It's gonna be a tough journey");
// Prereqs
mods.thaumcraft.Research.addSibling("THAUMONOMICON", "EXPERTCHANGES");
mods.thaumcraft.Research.setRound("EXPERTCHANGES", true);
mods.thaumcraft.Research.setAutoUnlock("EXPERTCHANGES", true);
mods.thaumcraft.Research.addPage("EXPERTCHANGES", "tnmx.ic.expertchanges_1");
game.setLocalization("tnmx.ic.expertchanges_1", "You noticed after exploring the world a bit, that the rules aren't the same down here ... <LINE> You will found in these pages the crafts that have been edited.");