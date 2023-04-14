// Recipes for Witching Gadgets

val cloak = <TravellersGear:simpleGear:0>;
val wolvenCloak = <WitchingGadgets:item.WG_Cloak:3>;
val shoulder = <TravellersGear:simpleGear:4>;
val seraphShoulders = <WitchingGadgets:item.WG_Baubles:0>;
val forearm = <TravellersGear:simpleGear:5>;
val wolvenBracers = <WitchingGadgets:item.WG_Baubles:2>;

val strengthIIPotion = <minecraft:potion:8233>;
val strengthIIXPotion = <minecraft:potion:16425>;
val netherStar = <minecraft:nether_star>;
val stickyPiston = <minecraft:sticky_piston>;
val enderPearl = <minecraft:ender_pearl>;

val wolfPelt = <WitchingGadgets:item.WG_Material:6>;
val spaceCloth = <WitchingGadgets:item.WG_Material:3>;
val taintFeather = <EMT:EMTItems:13>;
val arcaneLifter = <Thaumcraft:blockLifter>;
val aerCluster = <Thaumcraft:blockCrystal>;
val upriseFocus = <ThaumicTinkerer:focusFlight>;
val featherMesh = <EMT:EMTItems:7>;

# Baubles
// Wolven Cloak
mods.thaumcraft.Arcane.removeRecipe(wolvenCloak);
mods.thaumcraft.Arcane.addShaped("CLOAK_WOLF",
/* Output                     */ wolvenCloak,
/* Aspects                    */ "perditio 180, terra 150, ignis 120",
/* InputArray                 */ [[netherStar, wolfPelt, netherStar], 
                                  [wolfPelt, cloak, wolfPelt],
                                  [spaceCloth, null, spaceCloth]] );
mods.thaumcraft.Research.refreshResearchRecipe("CLOAK_WOLF");

// Seraph's Shoulders
mods.thaumcraft.Infusion.removeRecipe(seraphShoulders);
mods.thaumcraft.Infusion.addRecipe("WGBAUBLES",
/* Input                        */ shoulder,
/* Ingredients                  */ [upriseFocus, aerCluster, stickyPiston, arcaneLifter, enderPearl, featherMesh],
/* Essentia                     */ "aer 35, motus 48, iter 26, superbia 20, volatus 65",
/* Output                       */ seraphShoulders,
/* Instability                  */ 6);

// Berserker's Bracers
mods.thaumcraft.Arcane.removeRecipe(wolvenBracers);
mods.thaumcraft.Arcane.addShaped("WGBAUBLES",
/* Output                     */ wolvenBracers,
/* Aspects                    */ "aer 36, ignis 28, terra 45, perditio 40",
/* InputArray                 */ [[strengthIIPotion, wolfPelt, strengthIIXPotion], 
                                  [wolfPelt, forearm, wolfPelt],
                                  [spaceCloth, taintFeather, spaceCloth]] );
mods.thaumcraft.Research.refreshResearchRecipe("WGBAUBLES");
