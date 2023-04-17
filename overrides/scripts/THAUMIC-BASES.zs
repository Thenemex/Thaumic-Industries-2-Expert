// Recipes for Thaumic Bases

val voidmetalBlock = <thaumicbases:voidBlock>;

val roseBush = <minecraft:double_plant:4>;
val vishroom = <Thaumcraft:blockCustomPlant:5>;

val aurelia = <thaumicbases:aurelia>;
val aureliaPetal = <thaumicbases:aureliaPetal>;
val aureliaPetalBlock = <thaumicbases:resource:5>;
val briar = <thaumicbases:briar>;
val briarDrops = <thaumicbases:resource:6>;
val primalShroom = <thaumicbases:ashroom>;

val en_nerfedText = "<LINE>The aspects of this item have been deactivated, because we can't find a proper way to balance it.<BR>It is still functionnal and present for a decorative purpose.<LINE>";
val fr_nerfedText = "<LINE>Les aspects de cet objet ont ete desactives, en raison de l'impossibilite de l'equilibrer correctement.<BR>Il reste fonctionnel et present pour un usage decoratif.<LINE>";

# Flowers

// Aurelia

mods.thaumcraft.Aspects.set(aurelia, "herba 1, lux 1, sensus 1, victus 1");
mods.thaumcraft.Aspects.set(aureliaPetal, "herba 1");
mods.thaumcraft.Aspects.set(aureliaPetalBlock, "herba 1");

// Briar

mods.thaumcraft.Crucible.removeRecipe(briar);
mods.thaumcraft.Crucible.addRecipe("TB.Briar",
/* OutputStack                  */ briar,
/* InputStack                   */ roseBush, 
/* AspectString                 */ "herba 12, sano 16, victus 8");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Briar");
mods.thaumcraft.Aspects.set(briar, "aer 2, herba 3, victus 5, sano 4");

// Briar Drops

mods.thaumcraft.Aspects.set(briarDrops, "herba 1, victus 1");

// Primal Shroom

mods.thaumcraft.Crucible.removeRecipe(primalShroom);
mods.thaumcraft.Crucible.addRecipe("TB.Ashroom",
/* OutputStack                  */ primalShroom,
/* InputStack                   */ vishroom, 
/* AspectString                 */ "lucrum 16, praecantatio 10, aer 5, ignis 5, aqua 5, terra 5, ordo 6, perditio 6");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Ashroom");

# Misc
// Void Metal Block
recipes.remove(voidmetalBlock);

#/ Research
// Aurelia

game.setLocalization("tc.research_text.TB.Aurelia", "An elder plant [ DEACTIVATED ]");
mods.thaumcraft.Research.addPage("TB.Aurelia", "tnmx.tb.aurelia_1");
game.setLocalization("tnmx.tb.aurelia_1", en_nerfedText);
game.setLocalization("fr_FR", "tnmx.tb.aurelia_1", fr_nerfedText);

// Briar

game.setLocalization("tc.research_text.TB.Briar", "A natural apothecary [ DEACTIVATED ]");
mods.thaumcraft.Research.addPage("TB.Briar", "tnmx.tb.briar_1");
game.setLocalization("tnmx.tb.briar_1", en_nerfedText);
game.setLocalization("fr_FR", "tnmx.tb.briar_1", fr_nerfedText);
