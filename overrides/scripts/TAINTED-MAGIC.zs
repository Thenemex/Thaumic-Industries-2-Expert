// Recipes for Tainted Magic

import minetweaker.item.IItemStack;

var shadowToolsArray = [<TaintedMagic:ItemShadowmetalSword>, <TaintedMagic:ItemShadowmetalPick>, <TaintedMagic:ItemShadowmetalAxe>, <TaintedMagic:ItemShadowmetalSpade>, <TaintedMagic:ItemShadowmetalHoe>] as IItemStack[];

# Aspects
mods.thaumcraft.Aspects.set(<TaintedMagic:BlockWarpwoodLog>, "arbor 3, alienis 1"); // Warpwood
mods.thaumcraft.Aspects.set(<TaintedMagic:BlockWarpwoodSapling>, "herba 2, arbor 1, alienis 1"); // Warpwood Sapling
mods.thaumcraft.Aspects.set(<TaintedMagic:BlockWarpwoodLeaves>, "herba 1"); // Warped Leaves
mods.thaumcraft.Aspects.set(<TaintedMagic:ItemMaterial:8>, "metallum 1"); // Shadowmetal Nugget
mods.thaumcraft.Aspects.set(<TaintedMagic:BlockNightshadeBush>, "herba 2, praecantatio 2, venenum 2"); // Atropa Belladonna
mods.thaumcraft.Aspects.set(<TaintedMagic:ItemNightshadeBerries>, "fames 2, mortuus 3, venenum 2"); // Nightshade Berries
mods.thaumcraft.Aspects.set(<TaintedMagic:ItemCrimsonBlood>, "alienis 1, tenebrae 3, vacuos 3, ordo 2, perditio 3"); // Phial of Crimson Blood

# Blades
// Thaumium Fortress Blade (1 Thaumium Blade + 1 Primal Charm + 1 Obsidian Staff + 4 Thaumium + 2 Gold Block + 2 Block of Quicksilver + 2 Emerald)
mods.thaumcraft.Infusion.removeRecipe(<TaintedMagic:ItemKatana:0>);
mods.thaumcraft.Infusion.addRecipe("THAUMIUMKATANA",
/* Input                        */ <Thaumcraft:ItemSwordThaumium>,
/* Ingredients                  */ [<Thaumcraft:ItemResource:15>, <Thaumcraft:ItemResource:2>, <minecraft:gold_block>, <minecraft:emerald>, <Thaumcraft:ItemResource:3>, <Thaumcraft:ItemResource:2>, <Thaumcraft:WandRod:51>, <Thaumcraft:ItemResource:2>, <minecraft:gold_block>, <minecraft:emerald>, <Thaumcraft:ItemResource:3>, <Thaumcraft:ItemResource:2>],
/* Essentia                     */ "metallum 84, praecantatio 44, telum 90",
/* Output                       */ <TaintedMagic:ItemKatana:0>,
/* Instability                  */ 16);
mods.thaumcraft.Research.refreshResearchRecipe("THAUMIUMKATANA");

// Void Metal Fortress Blade (1 Thaumium Blade + 1 Primal Charm + 1 Obsidian Staff + 4 Void Metal + 2 Gold Block + 2 Block of Quicksilver + 2 Emerald)
mods.thaumcraft.Infusion.removeRecipe(<TaintedMagic:ItemKatana:1>);
mods.thaumcraft.Infusion.addRecipe("VOIDMETALKATANA",
/* Input                        */ <TaintedMagic:ItemKatana:0>,
/* Ingredients                  */ [<Thaumcraft:ItemResource:15>, <Thaumcraft:ItemResource:16>, <minecraft:gold_block>, <minecraft:emerald>, <Thaumcraft:ItemResource:3>, <Thaumcraft:ItemResource:16>, <Thaumcraft:WandRod:51>, <Thaumcraft:ItemResource:16>, <minecraft:gold_block>, <minecraft:emerald>, <Thaumcraft:ItemResource:3>, <Thaumcraft:ItemResource:16>],
/* Essentia                     */ "alienis 24, metallum 104, praecantatio 64, telum 110, vacuos 92",
/* Output                       */ <TaintedMagic:ItemKatana:1>,
/* Instability                  */ 20);
mods.thaumcraft.Research.refreshResearchRecipe("VOIDMETALKATANA");

// Shadow Metal Fortress Blade (1 Thaumium Blade + 1 Primal Charm + 1 Obsidian Staff + 4 Shadowmetal + 2 Gold Block + 2 Block of Quicksilver + 2 Emerald)
mods.thaumcraft.Infusion.removeRecipe(<TaintedMagic:ItemKatana:2>);
mods.thaumcraft.Infusion.addRecipe("SHADOWMETALKATANA",
/* Input                        */ <TaintedMagic:ItemKatana:1>,
/* Ingredients                  */ [<Thaumcraft:ItemResource:15>, <TaintedMagic:ItemMaterial:0>, <minecraft:gold_block>, <minecraft:emerald>, <Thaumcraft:ItemResource:3>, <TaintedMagic:ItemMaterial:0>, <Thaumcraft:WandRod:51>, <TaintedMagic:ItemMaterial:0>, <minecraft:gold_block>, <minecraft:emerald>, <Thaumcraft:ItemResource:3>, <TaintedMagic:ItemMaterial:0>],
/* Essentia                     */ "metallum 124, praecantatio 84, telum 110, tenebrae 92, vacuos 32",
/* Output                       */ <TaintedMagic:ItemKatana:2>,
/* Instability                  */ 24);
mods.thaumcraft.Research.refreshResearchRecipe("SHADOWMETALKATANA");

# Googles
// Warped Goggles of Revealing (1 Goggles + 1 Shadowmetal + 1 Primal Charm + 1 Quicksilver + 1 Ender Eye
mods.thaumcraft.Infusion.removeRecipe(<TaintedMagic:ItemWarpedGoggles>);
mods.thaumcraft.Infusion.addRecipe("WARPEDGOGGLES",
/* Input                        */ <Thaumcraft:ItemGoggles>,
/* Ingredients                  */ [<TaintedMagic:ItemMaterial:0>, <Thaumcraft:ItemResource:15>, <Thaumcraft:ItemResource:3>, <minecraft:ender_eye>],
/* Essentia                     */ "alienis 50, praecantatio 32, tenebrae 20, tutamen 16",
/* Output                       */ <TaintedMagic:ItemWarpedGoggles>,
/* Instability                  */ 8);
mods.thaumcraft.Research.refreshResearchRecipe("WARPEDGOGGLES");

// Void Metal Goggles of Revealing (1 Warped Goggles + 1 Void Metal + 1 Eldritch Eye + 1 Magic Mirror + 1 Ender Eye
mods.thaumcraft.Infusion.removeRecipe(<TaintedMagic:ItemVoidmetalGoggles>);
mods.thaumcraft.Infusion.addRecipe("VOIDGOGGLES",
/* Input                        */ <TaintedMagic:ItemWarpedGoggles>,
/* Ingredients                  */ [<TaintedMagic:ItemMaterial:0>, <Thaumcraft:ItemResource:16>, <minecraft:ender_eye>, <Thaumcraft:ItemResource:16>, <Thaumcraft:blockMirror:0>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemEldritchObject:0>, <Thaumcraft:ItemResource:16>],
/* Essentia                     */ "alienis 80, praecantatio 60, sensus 40, tutamen 32, vacuos 50",
/* Output                       */ <TaintedMagic:ItemVoidmetalGoggles>,
/* Instability                  */ 20);
mods.thaumcraft.Research.refreshResearchRecipe("VOIDGOGGLES");
mods.thaumcraft.Research.addPrereq("VOIDGOGGLES", "VOIDMETAL", true);
mods.thaumcraft.Research.addPrereq("VOIDGOGGLES", "MIRROR", true);
mods.thaumcraft.Research.addPrereq("VOIDGOGGLES", "OCULUS", true);

# Resources
// Warped Unbalanced Shard
mods.thaumcraft.Crucible.removeRecipe(<TaintedMagic:ItemMaterial:3>);
mods.thaumcraft.Crucible.addRecipe("UNBALANCEDSHARDS",
/* OutputStack                  */ <TaintedMagic:ItemMaterial:3>,
/* InputStack                   */ <Thaumcraft:ItemShard:6>, // Balanced Shard
/* AspectString                 */ "alienis 16");
mods.thaumcraft.Research.refreshResearchRecipe("UNBALANCEDSHARDS");

// Shadowmetal Ingot (1 Thaumium = 8 Shadowmetal nuggets)
mods.thaumcraft.Crucible.removeRecipe(<TaintedMagic:ItemMaterial:0>);
mods.thaumcraft.Crucible.addRecipe("SHADOWMETAL",
/* Output                       */ <TaintedMagic:ItemMaterial:8> * 8,
/* Input                        */ <Thaumcraft:ItemResource:2>,
/* Essentia                     */ "alienis 3, metallum 11, perditio 5, tenebrae 13, vacuos 7");

# Tools
// Shadowmetal Sword (3.2 Shadowmetal + 1 Obsidian Staff + 1 Primal Charm)
recipes.remove(<TaintedMagic:ItemShadowmetalSword>);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ <TaintedMagic:ItemShadowmetalSword>,
/* Aspects                    */ "ordo 100, perditio 150",
/* InputArray                 */ [[null, <TaintedMagic:ItemMaterial:8>, <TaintedMagic:ItemMaterial:0>], 
                                  [<TaintedMagic:ItemMaterial:0>, <Thaumcraft:FocusPortableHole>, <TaintedMagic:ItemMaterial:8>],
                                  [<Thaumcraft:WandRod:51>, <TaintedMagic:ItemMaterial:0>, null]] );

// Shadowmetal Pickaxe (3.2 Shadowmetal + 1 Obsidian Staff + 1 Primal Charm)
recipes.remove(<TaintedMagic:ItemShadowmetalPick>);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ <TaintedMagic:ItemShadowmetalPick>,
/* Aspects                    */ "ordo 90, perditio 130",
/* InputArray                 */ [[<TaintedMagic:ItemMaterial:8>, <TaintedMagic:ItemMaterial:0>, <TaintedMagic:ItemMaterial:0>], 
                                  [null, <Thaumcraft:FocusPortableHole>, <TaintedMagic:ItemMaterial:0>],
                                  [<Thaumcraft:WandRod:51>, null, <TaintedMagic:ItemMaterial:8>]] );

// Shadowmetal Axe (3.1 Shadowmetal + 1 Obsidian Staff + 1 Primal Charm)
recipes.remove(<TaintedMagic:ItemShadowmetalAxe>);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ <TaintedMagic:ItemShadowmetalAxe>,
/* Aspects                    */ "ordo 95, perditio 140",
/* InputArray                 */ [[<TaintedMagic:ItemMaterial:0>, <TaintedMagic:ItemMaterial:0>, <TaintedMagic:ItemMaterial:8>], 
                                  [<TaintedMagic:ItemMaterial:0>, <Thaumcraft:FocusPortableHole>, null],
                                  [null, <Thaumcraft:WandRod:51>, null]] );

// Shadowmetal Shovel (1.2 Shadowmetal + 1 Obsidian Staff + 1 Primal Charm)
recipes.remove(<TaintedMagic:ItemShadowmetalSpade>);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ <TaintedMagic:ItemShadowmetalSpade>,
/* Aspects                    */ "ordo 85, perditio 120",
/* InputArray                 */ [[null, <TaintedMagic:ItemMaterial:8>, <TaintedMagic:ItemMaterial:0>], 
                                  [null, <Thaumcraft:FocusPortableHole>, <TaintedMagic:ItemMaterial:8>],
                                  [<Thaumcraft:WandRod:51>, null, null]] );

// Shadowmetal Hoe (1.1 Shadowmetal + 1 Obsidian Staff + 1 Primal Charm)
recipes.remove(<TaintedMagic:ItemShadowmetalHoe>);
mods.thaumcraft.Arcane.addShaped("SHADOWMETAL",
/* Output                     */ <TaintedMagic:ItemShadowmetalHoe>,
/* Aspects                    */ "ordo 80, perditio 110",
/* InputArray                 */ [[<TaintedMagic:ItemMaterial:0>, <TaintedMagic:ItemMaterial:8>, null], 
                                  [null, <Thaumcraft:FocusPortableHole>, null],
                                  [<Thaumcraft:WandRod:51>, null, null]] );

# Research
// Have to replace all the pages to add arcane crafting
mods.thaumcraft.Research.clearPages("SHADOWMETAL");
mods.thaumcraft.Research.addPage("SHADOWMETAL", "tnmx.tm.shadowmetal_1");
// Adding English
game.setLocalization("tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tm.text.SHADOWMETAL.tnmx.tm.shadowmetal_1", "Once upon a time you were transmuting something in your crucible. After botching a recipe, you accidentally dropped some magic metal into the bubbling mess; to your surprise, out came a mysterious metal ingot.<BR>You have decided to name it Shadow Metal. It is extremely heavy and seems very durable, but it is highly unstable and difficult to craft with. You will likely have to use it alongside another magical metal.<BR>You place your ear against this strange substance and hear faint whispers. Are you going mad? Who knows");
// Re-adding all the pages with arcane crafting
mods.thaumcraft.Research.addCruciblePage("SHADOWMETAL", <TaintedMagic:ItemMaterial:8>);
for i, el_shadowTool in shadowToolsArray {
    mods.thaumcraft.Research.addArcanePage("SHADOWMETAL", el_shadowTool); }
# Research Prereqs
// Adding the Obsidian Staff as prereqs for the Shadow Metal
mods.thaumcraft.Research.addPrereq("SHADOWMETAL", "ROD_obsidian_staff", true);
mods.thaumcraft.Research.addPrereq("SHADOWMETAL", "FOCUSPORTABLEHOLE", true);
