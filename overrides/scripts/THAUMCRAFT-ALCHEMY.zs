// Recipes for Thaumcraft - Alchemy

import minetweaker.item.IItemStack;

val ironNugget_OD = <ore:nuggetIron>;
val iron = <minecraft:iron_ingot>;

val greatwoodRod = <Thaumcraft:WandRod:0>;
val thaumiumNugget = <Thaumcraft:ItemNugget:6>;
val thaumium = <Thaumcraft:ItemResource:2>;

val thaumiumSword = <Thaumcraft:ItemSwordThaumium>;
val thaumiumPick = <Thaumcraft:ItemPickThaumium>;
val thaumiumAxe = <Thaumcraft:ItemAxeThaumium>;
val thaumiumShov = <Thaumcraft:ItemShovelThaumium>;
val thaumiumHoe = <Thaumcraft:ItemHoeThaumium>;

val thaumiumHelm = <Thaumcraft:ItemHelmetThaumium>;
val thaumiumChest = <Thaumcraft:ItemChestplateThaumium>;
val thaumiumLegs = <Thaumcraft:ItemLeggingsThaumium>;
val thaumiumBoots = <Thaumcraft:ItemBootsThaumium>;

var thaumToolsArray = [thaumiumSword, thaumiumPick, thaumiumAxe, thaumiumShov, thaumiumHoe, thaumiumHelm, thaumiumChest, thaumiumLegs, thaumiumBoots] as IItemStack[];

# Armor
// Thaumium Helmet
recipes.remove(thaumiumHelm);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumHelm,
/* Aspects                    */ "terra 10, ordo 10",
/* InputArray                 */ [[thaumium, thaumium, thaumium], 
                                  [thaumium, null, thaumium],
                                  [null, null, null]] );

// Thaumium Chestplate
recipes.remove(thaumiumChest);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumChest,
/* Aspects                    */ "terra 16, ordo 16",
/* InputArray                 */ [[thaumium, null, thaumium], 
                                  [thaumium, thaumium, thaumium],
                                  [thaumium, thaumium, thaumium]] );

// Thaumium Leggins
recipes.remove(thaumiumLegs);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumLegs,
/* Aspects                    */ "terra 14, ordo 14",
/* InputArray                 */ [[thaumium, thaumium, thaumium], 
                                  [thaumium, null, thaumium],
                                  [thaumium, null, thaumium]] );

// Thaumium Boots
recipes.remove(thaumiumBoots);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumBoots,
/* Aspects                    */ "terra 8, ordo 8",
/* InputArray                 */ [[null, null, null], 
                                  [thaumium, null, thaumium],
                                  [thaumium, null, thaumium]] );

# Resources
// Thaumium
mods.thaumcraft.Crucible.removeRecipe(thaumium);
mods.thaumcraft.Crucible.addRecipe("THAUMIUM",
/* OutputStack                  */ thaumium,
/* InputStack                   */ iron, 
/* AspectString                 */ "praecantatio 5");

# Tools
// Thaumium Sword
recipes.remove(thaumiumSword);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumSword,
/* Aspects                    */ "terra 6, ordo 10",
/* InputArray                 */ [[null, null, thaumium], 
                                  [thaumiumNugget, thaumium, null],
                                  [greatwoodRod, thaumiumNugget, null]] );

// Thaumium Pickaxe
recipes.remove(thaumiumPick);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumPick,
/* Aspects                    */ "terra 10, ordo 6",
/* InputArray                 */ [[thaumiumNugget, thaumium, thaumium], 
                                  [null, greatwoodRod, thaumium],
                                  [greatwoodRod, null, thaumiumNugget]] );

// Thaumium Axe
recipes.remove(thaumiumAxe);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumAxe,
/* Aspects                    */ "terra 9, ordo 7",
/* InputArray                 */ [[thaumium, thaumium, thaumiumNugget], 
                                  [thaumium, greatwoodRod, null],
                                  [null, greatwoodRod, null]] );

// Thaumium Shovel
recipes.remove(thaumiumShov);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumShov,
/* Aspects                    */ "terra 8, ordo 8",
/* InputArray                 */ [[null, thaumiumNugget, thaumium], 
                                  [null, greatwoodRod, thaumiumNugget],
                                  [greatwoodRod, null, null]] );

// Thaumium Hoe
recipes.remove(thaumiumHoe);
mods.thaumcraft.Arcane.addShaped("THAUMIUM",
/* Output                     */ thaumiumHoe,
/* Aspects                    */ "terra 7, ordo 9",
/* InputArray                 */ [[thaumium, thaumium, thaumiumNugget], 
                                  [null, greatwoodRod, null],
                                  [greatwoodRod, null, null]] );

# Research
val en_text = "Metals have proven to be quite easy to manipulate via thaumaturgical principles. Your first experiments have led to discovery of Thaumium.<BR>Thaumium is the result of infusing base metals with raw magical energy. The result is a metal harder than iron with the ability to accept enchantments beyond that which iron is normally capable of.<BR>A metal such as this has many applications int the craftinf of more advanced thaumaturgical devices.<BR>It can also be used to craft tools, arms and armor in an arcane worktable.";
val fr_text = "Les métaux se sont révélés être assez faciles à manipuler via les principes thaumaturgiques. Vos premières expériences ont conduit à la découverte du Thaumium. Le Thaumium est le résultat de l'infusion du métal de base avec de la magie brute. C'est un métal plus dur que le fer avec la capacité d'accepter des enchantements supérieurs à ce que permet le fer.<BR> Un métal comme celui-là a plusieurs applications dans l'élaboration de dispositifs thaumaturgiques plus avancés.<BR>Il peut être utilisé pour fabriquer des outils, armes et armures dans un atelier arcanique.";
mods.thaumcraft.Research.clearPages("THAUMIUM");
mods.thaumcraft.Research.addPage("THAUMIUM", "tnmx.alchemy.thaumium.1");
game.setLocalization("tnmx.alchemy.thaumium.1", en_text);
game.setLocalization("fr_FR", "tnmx.alchemy.thaumium.1", fr_text);
mods.thaumcraft.Research.addCruciblePage("THAUMIUM", thaumium);
for i, el_thaumTool in thaumToolsArray {
    mods.thaumcraft.Research.addArcanePage("THAUMIUM", el_thaumTool); }
