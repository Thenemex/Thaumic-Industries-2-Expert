// Recipes for Thaumcraft - Artifice

val thaumFortressHelm = <Thaumcraft:ItemHelmetFortress>;
val thaumFortressChest = <Thaumcraft:ItemChestplateFortress>;
val thaumFortressLegs = <Thaumcraft:ItemLeggingsFortress>;

val thaumHelm = <Thaumcraft:ItemHelmetThaumium>;
val thaumChest = <Thaumcraft:ItemChestplateThaumium>;
val thaumLegs = <Thaumcraft:ItemLeggingsThaumium>;

val thaumostaticBelt = <Thaumcraft:ItemGirdleHover:0>;
val blazeWandRod = <Thaumcraft:WandRod:6>;
val enchantCloth = <Thaumcraft:ItemResource:7>;

val thaumIngot = <Thaumcraft:ItemResource:2>;
val thaumBlock = <Thaumcraft:blockCosmeticSolid:4>;
val goldIngot = <minecraft:gold_ingot>;
val emerald = <minecraft:emerald>;

# Fortress Armor
// Fortress Helmet
mods.thaumcraft.Infusion.removeRecipe(thaumFortressHelm);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ thaumHelm,
/* Ingredients                  */ [emerald, blazeWandRod, goldIngot, thaumIngot, thaumBlock, thaumIngot, goldIngot, blazeWandRod],
/* Essentia                     */ "metallum 48, tutamen 32, praecantatio 40, sensus 16",
/* Output                       */ thaumFortressHelm,
/* Instability                  */ 4);

// Fortress Chestplate
mods.thaumcraft.Infusion.removeRecipe(thaumFortressChest);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ thaumChest,
/* Ingredients                  */ [thaumBlock, thaumIngot, enchantCloth, goldIngot, thaumostaticBelt, goldIngot, enchantCloth, thaumIngot],
/* Essentia                     */ "metallum 48, tutamen 48, praecantatio 40, sensus 24",
/* Output                       */ thaumFortressChest,
/* Instability                  */ 4);

// Fortress Leggings
mods.thaumcraft.Infusion.removeRecipe(thaumFortressLegs);
mods.thaumcraft.Infusion.addRecipe("ARMORFORTRESS",
/* Input                        */ thaumLegs,
/* Ingredients                  */ [thaumBlock, thaumIngot, enchantCloth, goldIngot, goldIngot, enchantCloth, thaumIngot],
/* Essentia                     */ "metallum 48, tutamen 40, praecantatio 40, sensus 20",
/* Output                       */ thaumFortressLegs,
/* Instability                  */ 4);
mods.thaumcraft.Research.refreshResearchRecipe("ARMORFORTRESS");
