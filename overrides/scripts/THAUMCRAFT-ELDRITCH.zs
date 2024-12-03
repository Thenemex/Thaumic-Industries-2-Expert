// Recipes for Thaumcraft - Eldritch

import minetweaker.item.IItemStack;

// Array of the 5 Void metal tools + 4 Armor pieces
var voidToolsArray = [<Thaumcraft:ItemSwordVoid>, <Thaumcraft:ItemPickVoid>, <Thaumcraft:ItemAxeVoid>, <Thaumcraft:ItemShovelVoid>, <Thaumcraft:ItemHoeVoid>, <Thaumcraft:ItemHelmetVoid>, <Thaumcraft:ItemChestplateVoid>, <Thaumcraft:ItemLeggingsVoid>, <Thaumcraft:ItemBootsVoid>] as IItemStack[];

# Resources
// Void seed (1 Wheat Seed = 1 Void Seed)
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:17>);
mods.thaumcraft.Crucible.addRecipe("ELDRITCHMINOR",
/* OutputStack                  */ <Thaumcraft:ItemResource:17>,
/* InputStack                   */ <minecraft:wheat_seeds>, 
/* AspectString                 */ "alienis 8, tenebrae 6, vacuos 10");
mods.thaumcraft.Research.refreshResearchRecipe("ELDRITCHMINOR");

// Void metal
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:16>);
mods.thaumcraft.Crucible.addRecipe("VOIDMETAL",
/* OutputStack                  */ <Thaumcraft:ItemResource:16>,
/* InputStack                   */ <Thaumcraft:ItemResource:17>, 
/* AspectString                 */ "metallum 12");
mods.thaumcraft.Research.refreshResearchRecipe("VOIDMETAL");

# Enchanting Table
// Adding the research
recipes.remove(<minecraft:enchanting_table>);
mods.thaumcraft.Research.addResearch("ENCHANTINGTABLE",
/* TabKey                         */ "ELDRITCH",
/* AspectList                     */ "cognitio 15, fabrico 8, lucrum 5, praecantatio 20, tenebrae 15",
/* X                              */ 2,
/* Y                              */ -4,
/* Complexity                     */ 3,
/* ItemStack                      */ <minecraft:enchanting_table>);
game.setLocalization("tc.research_name.ENCHANTINGTABLE", "Enchanting table");
game.setLocalization("fr_FR", "tc.research_name.ENCHANTINGTABLE", "Table d'enchantement");
game.setLocalization("tc.research_text.ENCHANTINGTABLE", "Enchantment from the void");
game.setLocalization("fr_FR", "tc.research_text.ENCHANTINGTABLE", "Enchantement par le vide");
mods.thaumcraft.Research.addPage("ENCHANTINGTABLE", "tnmx.eldritch.enchantingtable_1");
game.setLocalization("tnmx.eldritch.enchantingtable_1", "Whispers from the void are beginning to drive you mad, but in the middle you heard a a singular voice. Guided by this voice, you started to write and conceive a device that can - in theory, enchant weapons and armory with the power of the void.<LINE>This process wouldn't use any additional items like the infusion enchantement, but will devour large amount of XP from the user.");
game.setLocalization("fr_FR", "tnmx.eldritch.enchantingtable_1", "Les voix dans votre tete commencent a vous rendre completement fou ; mais parmi ces voix, une se distingue du reste : guide par cette voix, vous commencez ainsi frenetiquement a ecrire une nouvelle recherche. Elle traite d'un nouveau dispositif occulte qui permettrait d'enchanter armes et armures avec le pouvoir infini du vide.<LINE>L'enchantement n'utiliserait aucun objet additionnel contrairement a l'infusion, mais il devorerait des quantites immenses d'XP de l'utilisateur.");
// Adding craft
mods.thaumcraft.Infusion.addRecipe("RESEARCH",
/* Input                        */ <Thaumcraft:ItemThaumonomicon:0>,
/* Ingredients                  */ [<minecraft:carpet:14>, <minecraft:diamond>, <minecraft:obsidian>, <minecraft:diamond>, <Thaumcraft:blockCosmeticSolid:0>,<WitchingGadgets:WG_MetalDevice:7>, <Thaumcraft:blockCosmeticSolid:1>, <WitchingGadgets:WG_MetalDevice:7>, <Thaumcraft:blockCosmeticSolid:0>, <minecraft:diamond>, <minecraft:obsidian>, <minecraft:diamond>],
/* Essentia                     */ "alienis 42, cognitio 150, fabrico 22, lucrum 50, praecantatio 92, tenebrae 30",
/* Output                       */ <minecraft:enchanting_table>,
/* Instability                  */ 8);
mods.thaumcraft.Research.addInfusionPage("ENCHANTINGTABLE", <minecraft:enchanting_table>);
// Prereqs
mods.thaumcraft.Warp.addToResearch("ENCHANTINGTABLE", 4);
mods.thaumcraft.Research.setConcealed("ENCHANTINGTABLE", false);
mods.thaumcraft.Research.addPrereq("ENCHANTINGTABLE", "INFUSIONENCHANTMENT", true);
mods.thaumcraft.Research.addPrereq("ENCHANTINGTABLE", "VOIDMETAL", false);

# Armor
// Voidmetal Helmet (5 Void Metal)
recipes.remove(<Thaumcraft:ItemHelmetVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemHelmetVoid>,
/* Aspects                    */ "terra 30, ordo 35, perditio 70",
/* InputArray                 */ [[<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>], 
                                  [<Thaumcraft:ItemResource:16>, null, <Thaumcraft:ItemResource:16>],
                                  [null, null, null]] );

// Voidmetal Chestplate (8 Void Metal)
recipes.remove(<Thaumcraft:ItemChestplateVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemChestplateVoid>,
/* Aspects                    */ "terra 30, ordo 60, perditio 100",
/* InputArray                 */ [[<Thaumcraft:ItemResource:16>, null, <Thaumcraft:ItemResource:16>], 
                                  [<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>],
                                  [<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>]] );

// Voidmetal Leggings (7 Void Metal)
recipes.remove(<Thaumcraft:ItemLeggingsVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemLeggingsVoid>,
/* Aspects                    */ "terra 30, ordo 55, perditio 90",
/* InputArray                 */ [[<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>], 
                                  [<Thaumcraft:ItemResource:16>, null, <Thaumcraft:ItemResource:16>],
                                  [<Thaumcraft:ItemResource:16>, null, <Thaumcraft:ItemResource:16>]] );

// Voidmetal Boots (4 Void Metal)
recipes.remove(<Thaumcraft:ItemBootsVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemBootsVoid>,
/* Aspects                    */ "terra 30, ordo 30, perditio 60",
/* InputArray                 */ [[null, null, null], 
                                  [<Thaumcraft:ItemResource:16>, null, <Thaumcraft:ItemResource:16>],
                                  [<Thaumcraft:ItemResource:16>, null, <Thaumcraft:ItemResource:16>]] );

# Tools
// Voidmetal Sword (3.2 Void Metal + 1 Primal Charm + 1 Obsidian Rod)
recipes.remove(<Thaumcraft:ItemSwordVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemSwordVoid>,
/* Aspects                    */ "terra 15, ordo 60, perditio 100",
/* InputArray                 */ [[null, <Thaumcraft:ItemNugget:7>, <Thaumcraft:ItemResource:16>], 
                                  [<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:15>, <Thaumcraft:ItemNugget:7>],
                                  [<Thaumcraft:WandRod:1>, <Thaumcraft:ItemResource:16>, null]] );

// Voidmetal Pickaxe (3.2 Void Metal + 1 Primal Charm + 1 Obsidian Rod)
recipes.remove(<Thaumcraft:ItemPickVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemPickVoid>,
/* Aspects                    */ "terra 15, ordo 50, perditio 80",
/* InputArray                 */ [[<Thaumcraft:ItemNugget:7>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>], 
                                  [null, <Thaumcraft:ItemResource:15>, <Thaumcraft:ItemResource:16>],
                                  [<Thaumcraft:WandRod:1>, null, <Thaumcraft:ItemNugget:7>]] );

// Voidmetal Axe (3.1 Void Metal + 1 Primal Charm + 1 Obsidian Rod)
recipes.remove(<Thaumcraft:ItemAxeVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemAxeVoid>,
/* Aspects                    */ "terra 15, ordo 55, perditio 90",
/* InputArray                 */ [[<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemNugget:7>], 
                                  [<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:15>, null],
                                  [null, <Thaumcraft:WandRod:1>, null]] );

// Voidmetal Shovel (1.2 Void Metal + 1 Primal Charm + 1 Obsidian Rod)
recipes.remove(<Thaumcraft:ItemShovelVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemShovelVoid>,
/* Aspects                    */ "terra 15, ordo 45, perditio 60",
/* InputArray                 */ [[null, <Thaumcraft:ItemNugget:7>, <Thaumcraft:ItemResource:16>], 
                                  [null, <Thaumcraft:ItemResource:15>, <Thaumcraft:ItemNugget:7>],
                                  [<Thaumcraft:WandRod:1>, null, null]] );

// Voidmetal Hoe (1.1 Void Metal + 1 Primal Charm + 1 Obsidian Rod)
recipes.remove(<Thaumcraft:ItemHoeVoid>);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ <Thaumcraft:ItemHoeVoid>,
/* Aspects                    */ "terra 15, ordo 40, perditio 50",
/* InputArray                 */ [[<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemNugget:7>, null], 
                                  [null, <Thaumcraft:ItemResource:15>, null],
                                  [<Thaumcraft:WandRod:1>, null, null]] );

# Research
// Have to replace all the pages to add arcane crafting
mods.thaumcraft.Research.clearPages("VOIDMETAL");
mods.thaumcraft.Research.addPage("VOIDMETAL", "tnmx.eldritch.<Thaumcraft:ItemResource:16>.1");
// Adding English & French
game.setLocalization("tnmx.eldritch.<Thaumcraft:ItemResource:16>.1", "By infusing magic into metal you had managed to create Thaumium. It was a worthy discovery, but the time has come to leave thaumium to amateurs and dabblers.<BR> A strange and half remembered dream has given you the urge to try something... different. What if you infuse metal with more than just magic; but with the very essence where magic is drawn from: Darkness and the Void that dwells between the stars.<BR> The resulting metal is disturbingly slick and warm to the touch. It is almost as soft as gold making it easy to work, but");
game.setLocalization("fr_FR", "tnmx.eldritch.<Thaumcraft:ItemResource:16>.1", "En infusant de la magie dans du metal vous avez reussi a creer du Thaumium. C'etait une decouverte de valeur, mais le temps est venu de laisser le thaumium aux amateurs et a ceux qui n'osent pas se mouiller.<BR>Un reve fou et a moitie oublie vous a donne le besoin d'essayer quelque chose de... Different. Que se passerait il si au lieu d'infuser du metal avec juste de la magie, vous l'infusiez avec l'essence meme de la source de la magie: Les Tenebres et le vide qui demeure entre les etoiles.<BR>Le metal qui en resulte est lisse et chaud au toucher... De facon troublante.");
mods.thaumcraft.Research.addCruciblePage("VOIDMETAL", <Thaumcraft:ItemResource:16>);
mods.thaumcraft.Research.addPage("VOIDMETAL", "tnmx.eldritch.<Thaumcraft:ItemResource:16>.3");
game.setLocalization("tnmx.eldritch.<Thaumcraft:ItemResource:16>.3", "when struck it becomes as hard as thaumium and sometimes even harder. More impressively all but the most devastating damage soon repairs itself as the metal slowly flows back into place.<BR>The only downside is that it isn't as easy to enchant as thaumium, but still compares favorably to mundane materials like iron.<BR>You have discovered that care must be taken when handling the metal ; being harmed by it seems to temporarily sap your strength.");
game.setLocalization("fr_FR", "tnmx.eldritch.<Thaumcraft:ItemResource:16>.3", "Il est presque aussi souple que l'or le rendant facile a travailler, mais quand il est frappe il devient aussi dur que du thaumium et parfois meme plus dur. Encore plus impressionant tous les dommages sauf les plus devastateurs se reparent d'eux memes, le metal reprenant lentement sa forme d'origine.<BR> Le seul point negatif est qu'il est plus difficile a enchanter que du thaumium, mais toujours meilleur que des materiaux basiques comme du fer.<BR>Vous avez decouvert que la prudence est de mise quand on manipule ce metal ; votre force semble temporairement disparaitre lorsque vous etes blesse par celui-ci.");
// Re-adding all the pages with arcane crafting
for i, el_voidTool in voidToolsArray {
    mods.thaumcraft.Research.addArcanePage("VOIDMETAL", el_voidTool); }
mods.thaumcraft.Research.addCraftingPage("VOIDMETAL", <WitchingGadgets:WG_MetalDevice:7>);
mods.thaumcraft.Research.addCraftingPage("VOIDMETAL", <Thaumcraft:ItemResource:16>);

# Research Prereqs
// Adding the Obsidian Rod as prereqs for the Void Metal
mods.thaumcraft.Research.addPrereq("VOIDMETAL", "ROD_obsidian", true);
