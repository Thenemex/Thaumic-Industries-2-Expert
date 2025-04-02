// Recipes for Forbidden Magic

# Focus
// Focus Blink - Remove
mods.thaumcraft.Infusion.removeRecipe(<ForbiddenMagic:BlinkFocus>);
mods.thaumcraft.Research.clearPrereqs("FOCUSBLINK");
mods.thaumcraft.Research.removeResearch("FOCUSBLINK");

# Bed
// Adding the research
recipes.remove(<minecraft:bed>);
mods.thaumcraft.Research.addResearch("VANILLABED",
/* TabKey                         */ "FORBIDDEN",
/* AspectList                     */ "desidia 10, fabrico 12, humanus 8, instrumentum 15, sensus 5",
/* X                              */ -6,
/* Y                              */ -1,
/* Complexity                     */ 4,
/* ItemStack                      */ <minecraft:bed>);
game.setLocalization("tc.research_name.VANILLABED", "End of Insomnia");
game.setLocalization("fr_FR", "tc.research_name.VANILLABED", "La fin de l'insomnie");
game.setLocalization("tc.research_text.VANILLABED", "Leave the nightmares behind");
game.setLocalization("fr_FR", "tc.research_text.VANILLABED", "La solution a vos cauchemars");
mods.thaumcraft.Research.addPage("VANILLABED", "tnmx.artifice.vanillabed_1");
game.setLocalization("tnmx.artifice.vanillabed_1", "After a good number of horrible nights, hidden in trees or caves in wait for the holy sun to rise and burn all the monsters from the dark, you finally said to yourself that it was enough.<LINE>Using some crimson and enchanted tissue infused with some laziness shards ; you built a magical bed forgotten from time that allows the user to skip the night directly to the noon !");
game.setLocalization("fr_FR", "tnmx.artifice.vanillabed_1", "Apres avoir passe un nombre de nuits horribles incalculable, cache dans les arbres ou dans les grottes en attendant que le soleil purificateur se leve et brule les abonimations de l'ombre ; vous relechissiez depuis un moment a pouvoir dormir en paix.<LINE>En alliant des morceaux de soie cramoisie et enchantee avec des cristaux de paresse ; vous avez construit un lit magique d'un temps oublie qui permet au joueur de passer la nuit directement a l'aube !");
// Adding the craft
mods.thaumcraft.Infusion.addRecipe("VANILLABED",
/* Input                        */ <Thaumcraft:blockWoodenDevice:8>,
/* Ingredients                  */ [<Thaumcraft:ItemResource:7>, <Thaumcraft:ItemResource:7>, <ForbiddenMagic:NetherShard:5>, <ForbiddenMagic:NetherShard:5>, <Thaumcraft:blockMagicalLog:0>, <ForbiddenMagic:NetherShard:5>, <ForbiddenMagic:NetherShard:5>, <Thaumcraft:ItemResource:7>],
/* Essentia                     */ "desidia 10, fabrico 12, humanus 8, instrumentum 15, sensus 5",
/* Output                       */ <minecraft:bed>,
/* Instability                  */ 2);
mods.thaumcraft.Research.addInfusionPage("VANILLABED", <minecraft:bed>);
// Prereqs
mods.thaumcraft.Research.addPrereq("VANILLABED", "NETHERSHARDS", false);
mods.thaumcraft.Research.addPrereq("VANILLABED", "INFUSION", true);
mods.thaumcraft.Research.addPrereq("VANILLABED", "ENCHFABRIC", true);
mods.thaumcraft.Research.addPrereq("VANILLABED", "BANNERS", true);
