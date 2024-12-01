// Recipes for Thaumic Bases

# Flowers
// Aurelia
mods.thaumcraft.Aspects.set(<thaumicbases:aurelia>, "herba 1, lux 1, sensus 1, victus 1");

// Aurelia Drops
mods.thaumcraft.Aspects.set(<thaumicbases:aureliaPetal>, "herba 1");
mods.thaumcraft.Aspects.set(<thaumicbases:resource:5>, "herba 1");
<thaumicbases:aurelia>.addTooltip(format.red("ONLY DECORATIVE"));

// Briar (1 Rose Bush = 1 Briar)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:briar>);
mods.thaumcraft.Crucible.addRecipe("TB.Briar",
/* OutputStack                  */ <thaumicbases:briar>,
/* InputStack                   */ <minecraft:double_plant:4>, 
/* AspectString                 */ "herba 12, sano 16, victus 8");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Briar");
mods.thaumcraft.Aspects.set(<thaumicbases:briar>, "aer 2, herba 3, victus 5, sano 4");
<thaumicbases:briar>.addTooltip(format.red("ONLY DECORATIVE"));

// Briar Drops
mods.thaumcraft.Aspects.set(<thaumicbases:resource:6>, "herba 1, victus 1");

// Primal Shroom (1 Vishroom = 1 Primal Shroom)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:ashroom>);
mods.thaumcraft.Crucible.addRecipe("TB.Ashroom",
/* OutputStack                  */ <thaumicbases:ashroom>,
/* InputStack                   */ <Thaumcraft:blockCustomPlant:5>, 
/* AspectString                 */ "lucrum 16, praecantatio 10, aer 5, ignis 5, aqua 5, terra 5, ordo 6, perditio 6");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Ashroom");

# Void Block (Replacement)
// Void Metal Anvil
mods.thaumcraft.Infusion.removeRecipe(<thaumicbases:voidAnvil>);
mods.thaumcraft.Infusion.addRecipe("TB.VoidAnvil",
/* Input                        */ <thaumicbases:thaumicAnvil>,
/* Ingredients                  */ [<WitchingGadgets:WG_MetalDevice:7>, <WitchingGadgets:WG_MetalDevice:7>, <WitchingGadgets:WG_MetalDevice:7>, <WitchingGadgets:WG_MetalDevice:7>, <WitchingGadgets:WG_MetalDevice:7>],
/* Essentia                     */ "fabrico 32, instrumentum 24, ordo 48, telum 24",
/* Output                       */ <thaumicbases:voidAnvil>,
/* Instability                  */ 4);
mods.thaumcraft.Research.refreshResearchRecipe("TB.VoidAnvil");

# Misc
// Void Metal Block
recipes.remove(<thaumicbases:voidBlock>);

