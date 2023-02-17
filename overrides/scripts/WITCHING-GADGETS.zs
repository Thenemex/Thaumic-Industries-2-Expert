// Recipes for Witching Gadgets

val wolfPelt = <WitchingGadgets:item.WG_Material:6>;
val spaceCloth = <WitchingGadgets:item.WG_Material:3>;
val netherStar = <minecraft:nether_star>;

val cloak = <TravellersGear:simpleGear:0>;
val wolvenCloak = <WitchingGadgets:item.WG_Cloak:3>;

mods.thaumcraft.Arcane.removeRecipe(wolvenCloak);
mods.thaumcraft.Arcane.addShaped("CLOAK_WOLF",
/* Output                     */ wolvenCloak,
/* Aspects                    */ "perditio 180, terra 150, ignis 120",
/* InputArray                 */ [[netherStar, wolfPelt, netherStar], 
                                  [wolfPelt, cloak, wolfPelt],
                                  [spaceCloth, null, spaceCloth]] );
mods.thaumcraft.Research.refreshResearchRecipe("CLOAK_WOLF");
