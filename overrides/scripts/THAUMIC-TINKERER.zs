// Recipes for Forbidden Magic

val osmotic = <ThaumicTinkerer:enchanter>;
val overchanter = <thaumicbases:overchanter>;

val primalCharm = <Thaumcraft:ItemResource:15>;
val voidmetalBlock = <WitchingGadgets:WG_MetalDevice:7>;
val spellCloth = <ThaumicTinkerer:spellCloth>;
val advancedStab = <Thaumcraft:blockStoneDevice:10>;

# Osmotic Enchanter
mods.thaumcraft.Infusion.removeRecipe(osmotic);
mods.thaumcraft.Infusion.addRecipe("ENCHANTER",
/* Input                        */ overchanter,
/* Ingredients                  */ [primalCharm, spellCloth, voidmetalBlock, voidmetalBlock, advancedStab, voidmetalBlock, voidmetalBlock, spellCloth],
/* Essentia                     */ "alienis 65, auram 90, cognitio 185, potentia 150, praecantatio 80, terminus 5, vacuos 110",
/* Output                       */ osmotic,
/* Instability                  */ 16);
mods.thaumcraft.Research.refreshResearchRecipe("ENCHANTER");
