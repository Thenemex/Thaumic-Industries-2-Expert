// Recipes for Thaumic Bases

# Removals
// Removing Void Seed - broken item not working properly.
mods.thaumcraft.Infusion.removeRecipe(<thaumicbases:voidSeed>);
mods.thaumcraft.Research.clearPrereqs("TB.VoidSeed");
mods.thaumcraft.Research.removeResearch("TB.VoidSeed");
// Removing Node Linking Device - Too much broken for the moment.
mods.thaumcraft.Arcane.removeRecipe(<thaumicbases:nodeLinker>);
mods.thaumcraft.Research.clearPrereqs("TB.NodeLinker");
mods.thaumcraft.Research.removeResearch("TB.NodeLinker");

# Flowers
// Sweed seeds (1 Grass = 1 Sweed)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:sweedSeeds>);
mods.thaumcraft.Crucible.addRecipe("TB.BasicPlants",
/* OutputStack                  */ <thaumicbases:sweedSeeds>,
/* InputStack                   */ <minecraft:tallgrass:1>, // Grass
/* AspectString                 */ "motus 8, victus 4, herba 2, aer 32, aqua 32");
mods.thaumcraft.Research.refreshResearchRecipe("TB.BasicPlants");

// Aurelia (1 Pink Tulip = 1 Aurelia)
mods.thaumcraft.Aspects.set(<thaumicbases:aurelia>, "herba 1, lux 1, sensus 1, victus 1");
// Aurelia Drops
mods.thaumcraft.Aspects.set(<thaumicbases:aureliaPetal>, "herba 1");
mods.thaumcraft.Aspects.set(<thaumicbases:resource:5>, "herba 1");
<thaumicbases:aurelia>.addTooltip(format.red("ONLY DECORATIVE"));

// Rosa Mysteria (1 Rose Bush = 1 Rosa)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:knoseSeed>);
mods.thaumcraft.Crucible.addRecipe("TB.Knose",
/* OutputStack                  */ <thaumicbases:knoseSeed>,
/* InputStack                   */ <minecraft:double_plant:4>, // Rose Bush
/* AspectString                 */ "cognitio 128, sano 64, victus 8");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Knose");
// Knose seed block
mods.thaumcraft.Aspects.set(<thaumicbases:knose>, "herba 1, victus 1");

// Fluxium (1 Allium = 1 Fluxium)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:flaxium>);
mods.thaumcraft.Crucible.addRecipe("TB.Flaxium",
/* OutputStack                  */ <thaumicbases:flaxium>,
/* InputStack                   */ <minecraft:red_flower:2>,
/* AspectString                 */ "praecantatio 16, permutatio 16, perditio 8, limus 2");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Flaxium");

// Primal Shroom (1 Vishroom = 1 Primal Shroom)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:ashroom>);
mods.thaumcraft.Crucible.addRecipe("TB.Ashroom",
/* OutputStack                  */ <thaumicbases:ashroom>,
/* InputStack                   */ <Thaumcraft:blockCustomPlant:5>,
/* AspectString                 */ "lucrum 16, praecantatio 10, aer 5, ignis 5, aqua 5, terra 5, ordo 6, perditio 6");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Ashroom");

// Glieonia Seed (1 Azure Bluet = 1 Glieonia)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:glieoniaSeed>);
mods.thaumcraft.Crucible.addRecipe("TB.Glieonia",
/* OutputStack                  */ <thaumicbases:glieoniaSeed>,
/* InputStack                   */ <minecraft:red_flower:3>,
/* AspectString                 */ "lux 64, praecantatio 18, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Glieonia");

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

# Thauminite
// Thauminite Caps (1 Charged Thaumium Cap + 5 Thauminite Nuggets + 3 Salis Mundus
mods.thaumcraft.Arcane.removeRecipe(<thaumicbases:resource:2>);
mods.thaumcraft.Arcane.addShaped("CAP_thauminite",
/* Output                     */ <thaumicbases:resource:2>,
/* Aspects                    */ "aer 65, aqua 65, terra 65, ignis 65, ordo 65, perditio 65",
/* InputArray                 */ [[<thaumicbases:resource:0>, <thaumicbases:resource:0>, <thaumicbases:resource:0>],
                                  [<thaumicbases:resource:0>, <Thaumcraft:WandCap:2>, <thaumicbases:resource:0>],
                                  [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>]] );
mods.thaumcraft.Research.refreshResearchRecipe("CAP_thauminite");
mods.thaumcraft.Research.addPrereq("CAP_thauminite", "CAP_thaumium", true);

# Anvils
// Thaumium Anvil (88 vis of each)
mods.thaumcraft.Arcane.removeRecipe(<thaumicbases:thaumicAnvil:0>);
mods.thaumcraft.Arcane.addShaped("TB.ThaumicAnvil",
/* Output                     */ <thaumicbases:thaumicAnvil:0>,
/* Aspects                    */ "aer 111, aqua 111, terra 111, ignis 111, ordo 111, perditio 111",
/* InputArray                 */ [[<ore:blockThaumium>, <ore:blockThaumium>, <ore:blockThaumium>],
                                  [null, <ore:ingotThaumium>, null],
                                  [<ore:ingotThaumium>, <ore:ingotThaumium>, <ore:ingotThaumium>]] );
mods.thaumcraft.Research.addPrereq("TB.ThaumicAnvil", "INFUSION", true);
mods.thaumcraft.Research.refreshResearchRecipe("TB.ThaumicAnvil");

# Wands nerf
// Thaumic Wand Rod (3 Thaumium Block + 4 Salis Mundis
mods.thaumcraft.Arcane.removeRecipe(<thaumicbases:resource:3>);
mods.thaumcraft.Arcane.addShaped("ROD_tbthaumium",
/* Output                     */ <thaumicbases:resource:3>,
/* Aspects                    */ "aer 180, aqua 180, terra 180, ignis 180, ordo 180, perditio 180",
/* InputArray                 */ [[null, <Thaumcraft:ItemResource:14>, <Thaumcraft:blockCosmeticSolid:4>],
                                  [<Thaumcraft:ItemResource:14>, <Thaumcraft:blockCosmeticSolid:4>, <Thaumcraft:ItemResource:14>],
                                  [<Thaumcraft:blockCosmeticSolid:4>, <Thaumcraft:ItemResource:14>, null]] );
mods.thaumcraft.Research.addPrereq("ROD_tbthaumium", "INFUSION", true);
mods.thaumcraft.Research.refreshResearchRecipe("ROD_tbthaumium");

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

