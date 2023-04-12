// Recipes for Forbidden Magic

val osmotic = <ThaumicTinkerer:enchanter>;
val overchanter = <thaumicbases:overchanter>;

val voidmetalBlock = <WitchingGadgets:WG_MetalDevice:7>;
val spellCloth = <ThaumicTinkerer:spellCloth>;
val crystalMBlock = <Avaritia:Crystal_Matrix>;
val ichorCloth = <ThaumicTinkerer:kamiResource:1>;
val advancedStab = <Thaumcraft:blockStoneDevice:10>;

# Osmotic Enchanter
mods.thaumcraft.Infusion.removeRecipe(osmotic);
mods.thaumcraft.Infusion.addRecipe("ENCHANTER",
/* Input                        */ overchanter,
/* Ingredients                  */ [crystalMBlock, ichorCloth, spellCloth, voidmetalBlock, voidmetalBlock, advancedStab, voidmetalBlock, voidmetalBlock, spellCloth, ichorCloth],
/* Essentia                     */ "alienis 65, auram 90, cognitio 185, potentia 150, praecantatio 80, terminus 8, vacuos 110",
/* Output                       */ osmotic,
/* Instability                  */ 16);
mods.thaumcraft.Research.refreshResearchRecipe("ENCHANTER");
