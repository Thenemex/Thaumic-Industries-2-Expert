// Recipes for Thaumcraft - Eldritch

import minetweaker.item.IItemStack;

val seed = <minecraft:wheat_seeds>;
val voidSeed = <Thaumcraft:ItemResource:17>;

val primalCharm = <Thaumcraft:ItemResource:15>;
val obsidianRod = <Thaumcraft:WandRod:1>;
val voidmetalNugget = <Thaumcraft:ItemNugget:7>;
val voidmetal = <Thaumcraft:ItemResource:16>;
val voidmetalBlock = <WitchingGadgets:WG_MetalDevice:7>;

val voidmetalSword = <Thaumcraft:ItemSwordVoid>;
val voidmetalPick = <Thaumcraft:ItemPickVoid>;
val voidmetalAxe = <Thaumcraft:ItemAxeVoid>;
val voidmetalShov = <Thaumcraft:ItemShovelVoid>;
val voidmetalHoe = <Thaumcraft:ItemHoeVoid>;

val voidmetalHelm = <Thaumcraft:ItemHelmetVoid>;
val voidmetalChest = <Thaumcraft:ItemChestplateVoid>;
val voidmetalLegs = <Thaumcraft:ItemLeggingsVoid>;
val voidmetalBoots = <Thaumcraft:ItemBootsVoid>;

var voidToolsArray = [voidmetalSword, voidmetalPick, voidmetalAxe, voidmetalShov, voidmetalHoe, voidmetalHelm, voidmetalChest, voidmetalLegs, voidmetalBoots] as IItemStack[];

# Armor
// Voidmetal Helmet
recipes.remove(voidmetalHelm);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalHelm,
/* Aspects                    */ "terra 30, ordo 55, perditio 90",
/* InputArray                 */ [[voidmetal, voidmetal, voidmetal], 
                                  [voidmetal, null, voidmetal],
                                  [null, null, null]] );

// Voidmetal Chestplate
recipes.remove(voidmetalChest);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalChest,
/* Aspects                    */ "terra 30, ordo 80, perditio 120",
/* InputArray                 */ [[voidmetal, null, voidmetal], 
                                  [voidmetal, voidmetal, voidmetal],
                                  [voidmetal, voidmetal, voidmetal]] );

// Voidmetal Leggings
recipes.remove(voidmetalLegs);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalLegs,
/* Aspects                    */ "terra 30, ordo 75, perditio 110",
/* InputArray                 */ [[voidmetal, voidmetal, voidmetal], 
                                  [voidmetal, null, voidmetal],
                                  [voidmetal, null, voidmetal]] );

// Voidmetal Boots
recipes.remove(voidmetalBoots);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalBoots,
/* Aspects                    */ "terra 30, ordo 50, perditio 80",
/* InputArray                 */ [[null, null, null], 
                                  [voidmetal, null, voidmetal],
                                  [voidmetal, null, voidmetal]] );

# Resources
// Void seed
mods.thaumcraft.Crucible.removeRecipe(voidSeed);
mods.thaumcraft.Crucible.addRecipe("ELDRITCHMINOR",
/* OutputStack                  */ voidSeed,
/* InputStack                   */ seed, 
/* AspectString                 */ "alienis 8, tenebrae 6, vacuos 10");
mods.thaumcraft.Research.refreshResearchRecipe("ELDRITCHMINOR");

// Void metal
mods.thaumcraft.Crucible.removeRecipe(voidmetal);
mods.thaumcraft.Crucible.addRecipe("VOIDMETAL",
/* OutputStack                  */ voidmetal,
/* InputStack                   */ voidSeed, 
/* AspectString                 */ "metallum 12");
mods.thaumcraft.Research.refreshResearchRecipe("VOIDMETAL");

# Tools
// Voidmetal Sword
recipes.remove(voidmetalSword);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalSword,
/* Aspects                    */ "terra 15, ordo 60, perditio 100",
/* InputArray                 */ [[null, voidmetalNugget, voidmetal], 
                                  [voidmetal, primalCharm, voidmetalNugget],
                                  [obsidianRod, voidmetal, null]] );

// Voidmetal Pickaxe
recipes.remove(voidmetalPick);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalPick,
/* Aspects                    */ "terra 15, ordo 50, perditio 80",
/* InputArray                 */ [[voidmetalNugget, voidmetal, voidmetal], 
                                  [null, primalCharm, voidmetal],
                                  [obsidianRod, null, voidmetalNugget]] );

// Voidmetal Axe
recipes.remove(voidmetalAxe);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalAxe,
/* Aspects                    */ "terra 15, ordo 55, perditio 90",
/* InputArray                 */ [[voidmetal, voidmetal, voidmetalNugget], 
                                  [voidmetal, primalCharm, null],
                                  [null, obsidianRod, null]] );

// Voidmetal Shovel
recipes.remove(voidmetalShov);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalShov,
/* Aspects                    */ "terra 15, ordo 45, perditio 60",
/* InputArray                 */ [[null, voidmetalNugget, voidmetal], 
                                  [null, primalCharm, voidmetalNugget],
                                  [obsidianRod, null, null]] );

// Voidmetal Hoe
recipes.remove(voidmetalHoe);
mods.thaumcraft.Arcane.addShaped("VOIDMETAL",
/* Output                     */ voidmetalHoe,
/* Aspects                    */ "terra 15, ordo 40, perditio 50",
/* InputArray                 */ [[voidmetal, voidmetalNugget, null], 
                                  [null, primalCharm, null],
                                  [obsidianRod, null, null]] );

# Research
val en_text1 = "By infusing magic into metal you had managed to create Thaumium. It was a worthy discovery, but the time has come to leave thaumium to amateurs and dabblers.<BR> A strange and half remembered dream has given you the urge to try something... different. What if you infuse metal with more than just magic; but with the very essence where magic is drawn from: Darkness and the Void that dwells between the stars.<BR> The resulting metal is disturbingly slick and warm to the touch. It is almost as soft as gold making it easy to work, but";
val en_text3 = "when struck it becomes as hard as thaumium and sometimes even harder. More impressively all but the most devastating damage soon repairs itself as the metal slowly flows back into place.<BR>The only downside is that it isn't as easy to enchant as thaumium, but still compares favorably to mundane materials like iron.<BR>You have discovered that care must be taken when handling the metal ; being harmed by it seems to temporarily sap your strength.";
val fr_text1 = "En infusant de la magie dans du metal vous avez reussi a creer du Thaumium. C'etait une decouverte de valeur, mais le temps est venu de laisser le thaumium aux amateurs et a ceux qui n'osent pas se mouiller.<BR>Un reve fou et a moitie oublie vous a donne le besoin d'essayer quelque chose de... Different. Que se passerait il si au lieu d'infuser du metal avec juste de la magie, vous l'infusiez avec l'essence meme de la source de la magie: Les Tenebres et le vide qui demeure entre les etoiles.<BR>Le metal qui en resulte est lisse et chaud au toucher... De facon troublante.";
val fr_text3 = "Il est presque aussi souple que l'or le rendant facile a travailler, mais quand il est frappe il devient aussi dur que du thaumium et parfois meme plus dur. Encore plus impressionant tous les dommages sauf les plus devastateurs se reparent d'eux memes, le metal reprenant lentement sa forme d'origine.<BR> Le seul point negatif est qu'il est plus difficile a enchanter que du thaumium, mais toujours meilleur que des materiaux basiques comme du fer.<BR>Vous avez decouvert que la prudence est de mise quand on manipule ce metal ; votre force semble temporairement disparaitre lorsque vous etes blesse par celui-ci.";
mods.thaumcraft.Research.clearPages("VOIDMETAL");
mods.thaumcraft.Research.addPage("VOIDMETAL", "tnmx.eldritch.voidmetal.1");
game.setLocalization("tnmx.eldritch.voidmetal.1", en_text1);
game.setLocalization("fr_FR", "tnmx.eldritch.voidmetal.1", fr_text1);
mods.thaumcraft.Research.addCruciblePage("VOIDMETAL", voidmetal);
mods.thaumcraft.Research.addPage("VOIDMETAL", "tnmx.eldritch.voidmetal.3");
game.setLocalization("tnmx.eldritch.voidmetal.3", en_text3);
game.setLocalization("fr_FR", "tnmx.eldritch.voidmetal.3", fr_text3);
for i, el_voidTool in voidToolsArray {
    mods.thaumcraft.Research.addArcanePage("VOIDMETAL", el_voidTool); }
mods.thaumcraft.Research.addCraftingPage("VOIDMETAL", voidmetalBlock);
mods.thaumcraft.Research.addCraftingPage("VOIDMETAL", voidmetal);
