// Recipes for Talismans 2

# Talisman Fusion (Research & Recipe both bugged)
// Adding aspects to the research
mods.thaumcraft.Research.setAspects("Fusion", "tutamen 8, humanus 5, potentia 5, terra 3");
mods.thaumcraft.Research.setComplexity("Fusion", 3);
// Setting a new recipe for the actual ring
mods.thaumcraft.Crucible.removeRecipe(<Talismans 2:Talisman Rings:0>);
mods.thaumcraft.Crucible.addRecipe("Fusion",
/* OutputStack                  */ <Talismans 2:Talisman Rings:0>,
/* InputStack                   */ <minecraft:iron_ingot>,
/* AspectString                 */ "metallum 10, praecantatio 12");
mods.thaumcraft.Research.refreshResearchRecipe("Fusion");
