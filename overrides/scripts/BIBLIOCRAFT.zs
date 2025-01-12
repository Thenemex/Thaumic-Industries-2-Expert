// Recipes for BiblioCraft

# Framed Chest nerf
// Framing saw
recipes.remove(<BiblioCraft:item.FramingSaw>);
recipes.addShaped(<BiblioCraft:item.FramingSaw>,
                  [[<minecraft:iron_ingot>, <minecraft:iron_block>, null],
                   [<Thaumcraft:ItemNugget:0>, <minecraft:iron_ingot>, <Thaumcraft:blockMagicalLog:0>],
                   [null, null, <Thaumcraft:blockWoodenDevice:6>]]);

// Framing Sheet (1 Saw + 8 Greatwood Planks)
recipes.remove(<BiblioCraft:item.FramingSheet>);
// Don't have to add .reuse() here, the saw already comes back.
recipes.addShaped(<BiblioCraft:item.FramingSheet>,
                  [[<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>],
                   [<Thaumcraft:blockWoodenDevice:6>, <BiblioCraft:item.FramingSaw>, <Thaumcraft:blockWoodenDevice:6>],
                   [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>]]);
