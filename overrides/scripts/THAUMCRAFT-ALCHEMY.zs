// Recipes for Thaumcraft - Alchemy

import minetweaker.item.IItemStack;

# Adding new oredict for Thaumcraft crystal clusters
val oreDictCrystalClusters = <ore:thaumcraftCrystalClusters>;
oreDictCrystalClusters.add(<Thaumcraft:blockCrystal:0>);
oreDictCrystalClusters.add(<Thaumcraft:blockCrystal:1>);
oreDictCrystalClusters.add(<Thaumcraft:blockCrystal:2>);
oreDictCrystalClusters.add(<Thaumcraft:blockCrystal:3>);
oreDictCrystalClusters.add(<Thaumcraft:blockCrystal:4>);
oreDictCrystalClusters.add(<Thaumcraft:blockCrystal:5>);
oreDictCrystalClusters.add(<Thaumcraft:blockCrystal:6>);

// Array of the 5 Thaumium tools + 4 Armor pieces
var thaumToolsArray = [<Thaumcraft:ItemSwordThaumium>, <Thaumcraft:ItemPickThaumium>, <Thaumcraft:ItemAxeThaumium>, <Thaumcraft:ItemShovelThaumium>, <Thaumcraft:ItemHoeThaumium>, <Thaumcraft:ItemHelmetThaumium>, <Thaumcraft:ItemChestplateThaumium>, <Thaumcraft:ItemLeggingsThaumium>, <Thaumcraft:ItemBootsThaumium>] as IItemStack[];

# Crucible
// Nitor (1 Glowstone = 1 Nitor)
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:1>);
mods.thaumcraft.Crucible.addRecipe("NITOR",
/* OutputStack                  */ <Thaumcraft:ItemResource:1>,
/* InputStack                   */ <minecraft:glowstone_dust>,
/* AspectString                 */ "ignis 5, lux 8, potentia 5");
mods.thaumcraft.Research.refreshResearchRecipe("NITOR");

// Magic Tallow (1 Rotten Flesh = 1 Tallow)
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:4>);
mods.thaumcraft.Crucible.addRecipe("TALLOW",
/* OutputStack                  */ <Thaumcraft:ItemResource:4> * 2,
/* InputStack                   */ <minecraft:rotten_flesh>,
/* AspectString                 */ "corpus 3, praecantatio 5");
mods.thaumcraft.Research.refreshResearchRecipe("TALLOW");

# Essentia
// Glass Phial (1 Greatwood + 1 Cluster + 3 Sand
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemEssence:0> * 2,
/* Aspects                    */ "ignis 20, terra 10, ordo 15",
/* InputArray                 */ [[null, <Thaumcraft:blockMagicalLog:0>, null],
                                  [<ore:sand>, oreDictCrystalClusters, <ore:sand>],
                                  [null, <ore:sand>, null]] );
// Adding the page to Phial auto-unlocked research
mods.thaumcraft.Research.addArcanePage("PHIAL", <Thaumcraft:ItemEssence:0>);

// Alchemical Furnace (1 Furnace + 1 Crucible + 1 Thaumium Block + 2 Alchemical Construct + 4 Arcane Stone
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:0>);
mods.thaumcraft.Arcane.addShaped("DISTILESSENTIA",
/* Output                     */ <Thaumcraft:blockStoneDevice:0>,
/* Aspects                    */ "aer 8, aqua 32, ignis 10, ordo 25, terra 15",
/* InputArray                 */ [[<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockMetalDevice:0>, <Thaumcraft:blockCosmeticSolid:6>],
                                  [<Thaumcraft:blockMetalDevice:9>, <minecraft:furnace>, <Thaumcraft:blockMetalDevice:9>],
                                  [<Thaumcraft:blockCosmeticSolid:6>, <ore:blockThaumium>, <Thaumcraft:blockCosmeticSolid:6>]] );
// Arcane Alembic (3 Thaumium + 2 Iron + 1 Gold + 1 Bucket + 1 Vis Filter + 1 Jarded War
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:1>);
mods.thaumcraft.Arcane.addShaped("DISTILESSENTIA",
/* Output                     */ <Thaumcraft:blockMetalDevice:1>,
/* Aspects                    */ "aer 10, aqua 15, ordo 8",
/* InputArray                 */ [[<Thaumcraft:ItemResource:8>, <Thaumcraft:ItemResource:2>, <minecraft:gold_ingot>],
                                  [<minecraft:iron_ingot>, <Thaumcraft:blockJar:0>, <minecraft:iron_ingot>],
                                  [<Thaumcraft:ItemResource:2>, <minecraft:bucket>, <Thaumcraft:ItemResource:2>]] );
mods.thaumcraft.Research.refreshResearchRecipe("DISTILESSENTIA");
// Adding Thaumium as prereq
mods.thaumcraft.Research.addPrereq("DISTILESSENTIA", "THAUMIUM", true);

// Warded Jar (7 Glass + 1 Greatwood slab)
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockJar:0>);
mods.thaumcraft.Arcane.addShaped("JARLABEL",
/* Output                     */ <Thaumcraft:blockJar:0>,
/* Aspects                    */ "aqua 3, ordo 1",
/* InputArray                 */ [[<minecraft:glass_pane>, <Thaumcraft:blockCosmeticSlabWood:0>, <minecraft:glass_pane>],
                                  [<minecraft:glass_pane>, null, <minecraft:glass_pane>],
                                  [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]] );
mods.thaumcraft.Research.refreshResearchRecipe("JARLABEL");

# Resources
// Thaumium (1 Iron Ingot = 8 Thaumium Nuggets)
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:2>);
mods.thaumcraft.Crucible.addRecipe("THAUMIUM",
/* OutputStack                  */ <Thaumcraft:ItemNugget:6> * 8,
/* InputStack                   */ <minecraft:iron_ingot>, 
/* AspectString                 */ "praecantatio 5");

# Armor
// Thaumium Helmet (5 Thaumium)
recipes.remove(<Thaumcraft:ItemHelmetThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemHelmetThaumium>,
/* Aspects                    */ "terra 10, ordo 10",
/* InputArray                 */ [[<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>], 
                                  [<Thaumcraft:ItemResource:2>, null, <Thaumcraft:ItemResource:2>],
                                  [null, null, null]] );

// Thaumium Chestplate (8 Thaumium)
recipes.remove(<Thaumcraft:ItemChestplateThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemChestplateThaumium>,
/* Aspects                    */ "terra 16, ordo 16",
/* InputArray                 */ [[<Thaumcraft:ItemResource:2>, null, <Thaumcraft:ItemResource:2>], 
                                  [<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>],
                                  [<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>]] );

// Thaumium Leggins (7 Thaumium)
recipes.remove(<Thaumcraft:ItemLeggingsThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemLeggingsThaumium>,
/* Aspects                    */ "terra 14, ordo 14",
/* InputArray                 */ [[<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>], 
                                  [<Thaumcraft:ItemResource:2>, null, <Thaumcraft:ItemResource:2>],
                                  [<Thaumcraft:ItemResource:2>, null, <Thaumcraft:ItemResource:2>]] );

// Thaumium Boots (4 Thaumium)
recipes.remove(<Thaumcraft:ItemBootsThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemBootsThaumium>,
/* Aspects                    */ "terra 8, ordo 8",
/* InputArray                 */ [[null, null, null], 
                                  [<Thaumcraft:ItemResource:2>, null, <Thaumcraft:ItemResource:2>],
                                  [<Thaumcraft:ItemResource:2>, null, <Thaumcraft:ItemResource:2>]] );

# Tools
// Thaumium Sword (1 GreatWoodRod + 2,2 Thaumium)
recipes.remove(<Thaumcraft:ItemSwordThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemSwordThaumium>,
/* Aspects                    */ "terra 6, ordo 10",
/* InputArray                 */ [[null, null, <Thaumcraft:ItemResource:2>], 
                                  [<Thaumcraft:ItemNugget:6>, <Thaumcraft:ItemResource:2>, null],
                                  [<Thaumcraft:WandRod:0>, <Thaumcraft:ItemNugget:6>, null]] );

// Thaumium Pickaxe (2 GreatWoodRod + 3,2 Thaumium)
recipes.remove(<Thaumcraft:ItemPickThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemPickThaumium>,
/* Aspects                    */ "terra 10, ordo 6",
/* InputArray                 */ [[<Thaumcraft:ItemNugget:6>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>], 
                                  [null, <Thaumcraft:WandRod:0>, <Thaumcraft:ItemResource:2>],
                                  [<Thaumcraft:WandRod:0>, null, <Thaumcraft:ItemNugget:6>]] );

// Thaumium Axe (2 GreatWoodRod + 3,1 Thaumium)
recipes.remove(<Thaumcraft:ItemAxeThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemAxeThaumium>,
/* Aspects                    */ "terra 9, ordo 7",
/* InputArray                 */ [[<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemNugget:6>], 
                                  [<Thaumcraft:ItemResource:2>, <Thaumcraft:WandRod:0>, null],
                                  [null, <Thaumcraft:WandRod:0>, null]] );

// Thaumium Shovel (2 GreatWoodRod + 1,2 Thaumium)
recipes.remove(<Thaumcraft:ItemShovelThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemShovelThaumium>,
/* Aspects                    */ "terra 8, ordo 8",
/* InputArray                 */ [[null, <Thaumcraft:ItemNugget:6>, <Thaumcraft:ItemResource:2>], 
                                  [null, <Thaumcraft:WandRod:0>, <Thaumcraft:ItemNugget:6>],
                                  [<Thaumcraft:WandRod:0>, null, null]] );

// Thaumium Hoe (2 GreatWoodRod + 2,1 Thaumium)
recipes.remove(<Thaumcraft:ItemHoeThaumium>);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ <Thaumcraft:ItemHoeThaumium>,
/* Aspects                    */ "terra 7, ordo 9",
/* InputArray                 */ [[<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemNugget:6>], 
                                  [null, <Thaumcraft:WandRod:0>, null],
                                  [<Thaumcraft:WandRod:0>, null, null]] );

// Have to replace all the pages to add arcane crafting
mods.thaumcraft.Research.clearPages("THAUMIUM");
mods.thaumcraft.Research.addPage("THAUMIUM", "tnmx.alchemy.thaumium.1");
// Adding English & French
game.setLocalization("tnmx.alchemy.thaumium.1", "Metals have proven to be quite easy to manipulate via thaumaturgical principles. Your first experiments have led to discovery of Thaumium.<BR>Thaumium is the result of infusing base metals with raw magical energy. The result is a metal harder than iron with the ability to accept enchantments beyond that which iron is normally capable of.<BR>A metal such as this has many applications in the crafting of more advanced thaumaturgical devices.<BR>It can also be used to craft tools, arms and armor in an arcane worktable.");
game.setLocalization("fr_FR", "tnmx.alchemy.thaumium.1", "Les metaux se sont reveles etre assez faciles a manipuler via les principes thaumaturgiques. Vos premieres experiences ont conduit a la decouverte du Thaumium. Le Thaumium est le resultat de l'infusion du metal de base avec de la magie brute. C'est un metal plus dur que le fer avec la capacite d'accepter des enchantements superieurs a ce que permet le fer.<BR> Un metal comme celui-la a plusieurs applications dans l'elaboration de dispositifs thaumaturgiques plus avances.<BR>Il peut etre utilise pour fabriquer des outils, armes et armures dans un atelier arcanique.");
// Re-adding all the pages with arcane crafting
mods.thaumcraft.Research.addCruciblePage("THAUMIUM", <Thaumcraft:ItemNugget:6>);
for i, el_thaumTool in thaumToolsArray {
    mods.thaumcraft.Research.addArcanePage("THAUMIUM", el_thaumTool); }
// Prereqs (Greatwood Wand Core)
mods.thaumcraft.Research.addPrereq("THAUMIUM", "IRONPICKAXE", true);
mods.thaumcraft.Research.addPrereq("THAUMIUM", "ROD_greatwood", true);
