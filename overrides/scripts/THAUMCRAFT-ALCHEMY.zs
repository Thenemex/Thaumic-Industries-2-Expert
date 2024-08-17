// Recipes for Thaumcraft - Alchemy

import minetweaker.item.IItemStack;

// Array of the 5 Thaumium tools + 4 Armor pieces
var thaumToolsArray = [<Thaumcraft:ItemSwordThaumium>, <Thaumcraft:ItemPickThaumium>, <Thaumcraft:ItemAxeThaumium>, <Thaumcraft:ItemShovelThaumium>, <Thaumcraft:ItemHoeThaumium>, <Thaumcraft:ItemHelmetThaumium>, <Thaumcraft:ItemChestplateThaumium>, <Thaumcraft:ItemLeggingsThaumium>, <Thaumcraft:ItemBootsThaumium>] as IItemStack[];

# Resources
// Thaumium (1 Iron = 1 Thaumium)
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:2>);
mods.thaumcraft.Crucible.addRecipe("THAUMIUM",
/* OutputStack                  */ <Thaumcraft:ItemResource:2>,
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

# Research
// Have to replace all the pages to add arcane crafting
mods.thaumcraft.Research.clearPages("THAUMIUM");
mods.thaumcraft.Research.addPage("THAUMIUM", "tnmx.alchemy.thaumium.1");
// Adding English & French
game.setLocalization("tnmx.alchemy.thaumium.1", "Metals have proven to be quite easy to manipulate via thaumaturgical principles. Your first experiments have led to discovery of Thaumium.<BR>Thaumium is the result of infusing base metals with raw magical energy. The result is a metal harder than iron with the ability to accept enchantments beyond that which iron is normally capable of.<BR>A metal such as this has many applications in the crafting of more advanced thaumaturgical devices.<BR>It can also be used to craft tools, arms and armor in an arcane worktable.");
game.setLocalization("fr_FR", "tnmx.alchemy.thaumium.1", "Les metaux se sont reveles etre assez faciles a manipuler via les principes thaumaturgiques. Vos premieres experiences ont conduit a la decouverte du Thaumium. Le Thaumium est le resultat de l'infusion du metal de base avec de la magie brute. C'est un metal plus dur que le fer avec la capacite d'accepter des enchantements superieurs a ce que permet le fer.<BR> Un metal comme celui-la a plusieurs applications dans l'elaboration de dispositifs thaumaturgiques plus avances.<BR>Il peut etre utilise pour fabriquer des outils, armes et armures dans un atelier arcanique.");
// Re-adding all the pages with arcane crafting
mods.thaumcraft.Research.addCruciblePage("THAUMIUM", <Thaumcraft:ItemResource:2>);
for i, el_thaumTool in thaumToolsArray {
    mods.thaumcraft.Research.addArcanePage("THAUMIUM", el_thaumTool); }
// Prereqs (Greatwood Wand Core)
mods.thaumcraft.Research.addPrereq("THAUMIUM", "ROD_greatwood", true);
