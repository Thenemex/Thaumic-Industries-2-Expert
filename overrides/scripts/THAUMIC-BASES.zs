// Recipes for Thaumic Bases

# Removals
// Removing Void Seed - Broken item not working properly.
mods.thaumcraft.Infusion.removeRecipe(<thaumicbases:voidSeed>);
mods.thaumcraft.Research.clearPrereqs("TB.VoidSeed");
mods.thaumcraft.Research.removeResearch("TB.VoidSeed");
// Removing Node Linking Device - Too much broken for the moment.
mods.thaumcraft.Arcane.removeRecipe(<thaumicbases:nodeLinker>);
mods.thaumcraft.Research.clearPrereqs("TB.NodeLinker");
mods.thaumcraft.Research.removeResearch("TB.NodeLinker");
// Removing Quicksilver recipe - Can't balance it without deleting the recipe from Thaumaturgical Knowledge
mods.thaumcraft.Research.clearPrereqs("TB.Quicksilver");
mods.thaumcraft.Research.clearPrereqs("TB.SM");
mods.thaumcraft.Research.removeResearch("TB.Quicksilver");
mods.thaumcraft.Research.addPrereq("TB.SM", "TB.Amber", false);

# Flowers
// Sweed seeds (1 Grass = 1 Sweed)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:sweedSeeds>);
mods.thaumcraft.Crucible.addRecipe("TB.BasicPlants",
/* OutputStack                  */ <thaumicbases:sweedSeeds>,
/* InputStack                   */ <minecraft:tallgrass:1>, // Grass
/* AspectString                 */ "motus 8, victus 4, herba 4, aer 32, aqua 32");
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
/* AspectString                 */ "cognitio 128, sano 64, ordo 48, praecantatio 36, victus 12, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Knose");
// Knose seed block
mods.thaumcraft.Aspects.set(<thaumicbases:knose>, "herba 1, victus 1");

// Fluxium (1 Allium = 1 Fluxium)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:flaxium>);
mods.thaumcraft.Crucible.addRecipe("TB.Flaxium",
/* OutputStack                  */ <thaumicbases:flaxium>,
/* InputStack                   */ <minecraft:red_flower:2>,
/* AspectString                 */ "praecantatio 16, permutatio 16, perditio 8, limus 2, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Flaxium");

// Primal Shroom (1 Vishroom = 1 Primal Shroom)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:ashroom>);
mods.thaumcraft.Crucible.addRecipe("TB.Ashroom",
/* OutputStack                  */ <thaumicbases:ashroom>,
/* InputStack                   */ <Thaumcraft:blockCustomPlant:5>,
/* AspectString                 */ "lucrum 16, praecantatio 10, aer 5, ignis 5, aqua 5, terra 5, ordo 6, perditio 6, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Ashroom");

// Glieonia Seed (1 Azure Bluet = 1 Glieonia)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:glieoniaSeed>);
mods.thaumcraft.Crucible.addRecipe("TB.Glieonia",
/* OutputStack                  */ <thaumicbases:glieoniaSeed>,
/* InputStack                   */ <minecraft:red_flower:3>,
/* AspectString                 */ "lux 64, praecantatio 18, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Glieonia");

// Metalleat Seeds (1 Wheat seed = 1 Metalleat)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:metalleatSeeds>);
mods.thaumcraft.Crucible.addRecipe("TB.Metalleat",
/* OutputStack                  */ <thaumicbases:metalleatSeeds>,
/* InputStack                   */ <minecraft:wheat_seeds>,
/* AspectString                 */ "metallum 128, lucrum 64, ordo 40, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Metalleat");

// Lazullia Seeds (1 Wheat seed = 1 Lazullia)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:lazulliaSeeds>);
mods.thaumcraft.Crucible.addRecipe("TB.Lazullia",
/* OutputStack                  */ <thaumicbases:lazulliaSeeds>,
/* InputStack                   */ <minecraft:wheat_seeds>,
/* AspectString                 */ "lucrum 128, sensus 128, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Lazullia");

// Rainbow Cacti (1 Cactus = 1 Rainbow Cacti)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:rainbowCactus>);
mods.thaumcraft.Crucible.addRecipe("TB.RainbowCacti",
/* OutputStack                  */ <thaumicbases:rainbowCactus>,
/* InputStack                   */ <minecraft:cactus>,
/* AspectString                 */ "sensus 1024, permutatio 192, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.RainbowCacti");

// Redlon (1 Melon seeds = 1 Redlon)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:redlonSeeds>);
mods.thaumcraft.Crucible.addRecipe("TB.Redlon",
/* OutputStack                  */ <thaumicbases:redlonSeeds>,
/* InputStack                   */ <minecraft:melon_seeds>,
/* AspectString                 */ "machina 256, potentia 256, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Redlon");

// Lucrite (1 Golden Carrot = 1 Lucrite)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:lucriteSeeds>);
mods.thaumcraft.Crucible.addRecipe("TB.Lucrite",
/* OutputStack                  */ <thaumicbases:lucriteSeeds>,
/* InputStack                   */ <minecraft:golden_carrot>,
/* AspectString                 */ "lucrum 512, metallum 128, fames 256, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Lucrite");

// Plax Seeds (1 Seeds = 1 Plax)
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:plaxSeed>);
mods.thaumcraft.Crucible.addRecipe("TB.Plax",
/* OutputStack                  */ <thaumicbases:plaxSeed>,
/* InputStack                   */ <minecraft:wheat_seeds>,
/* AspectString                 */ "pannus 256, fabrico 128, instrumentum 64, victus 4, herba 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Plax");

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

# Tobacco
// Wisdom Tobacco
mods.thaumcraft.Crucible.removeRecipe(<thaumicbases:tobaccoPowder:4>);
mods.thaumcraft.Crucible.addRecipe("TB.Tobacco.Wisdom",
/* OutputStack                  */ <thaumicbases:tobaccoPowder:4>, // Wisdom
/* InputStack                   */ <thaumicbases:tobaccoPowder:0>, // Mundane
/* AspectString                 */ "aer 8, cognitio 24, praecantatio 4");
mods.thaumcraft.Research.refreshResearchRecipe("TB.Tobacco.Wisdom");

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
// Thaumium Anvil (27+3 Thaumium + 1 Primal Charm)
mods.thaumcraft.Arcane.removeRecipe(<thaumicbases:thaumicAnvil:0>);
mods.thaumcraft.Arcane.addShaped("TB.ThaumicAnvil",
/* Output                     */ <thaumicbases:thaumicAnvil:0>,
/* Aspects                    */ "aer 30, aqua 30, terra 50, ignis 30, ordo 50, perditio 30",
/* InputArray                 */ [[<ore:blockThaumium>, <ore:blockThaumium>, <ore:blockThaumium>],
                                  [null, <Thaumcraft:ItemResource:15>, null],
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
/* Ingredients                  */ [<WitchingGadgets:MetalDevice:7>, <WitchingGadgets:MetalDevice:7>, <WitchingGadgets:MetalDevice:7>, <WitchingGadgets:MetalDevice:7>, <WitchingGadgets:MetalDevice:7>],
/* Essentia                     */ "fabrico 32, instrumentum 24, ordo 48, telum 24",
/* Output                       */ <thaumicbases:voidAnvil>,
/* Instability                  */ 4);
mods.thaumcraft.Research.refreshResearchRecipe("TB.VoidAnvil");

# Misc
// Void Metal Block
recipes.remove(<thaumicbases:voidBlock>);

# Localization
// Thankies to neverwindy !
game.setLocalization("ru_RU", "tc.research_category.THAUMICBASES", "Основы Тауматургии");
game.setLocalization("ru_RU", "enchantment.elderKnowledge", "Древнее Знание");
game.setLocalization("ru_RU", "enchantment.eldritchBane", "Погибель Древних");
game.setLocalization("ru_RU", "enchantment.magicTouch", "Магическое Лезвие");
game.setLocalization("ru_RU", "enchantment.tainted", "Заражение");
game.setLocalization("ru_RU", "enchantment.vaporising", "Выпаривание");
game.setLocalization("ru_RU", "tile.quicksilverBlock.name", "Блок Ртути");
game.setLocalization("ru_RU", "tile.quicksilverBrick.name", "Ртутный кирпич");
game.setLocalization("ru_RU", "tile.crystalBlockfire.name", "Огненный Кристальный блок");
game.setLocalization("ru_RU", "tile.crystalBlockwater.name", "Ледяной Кристальный блок");
game.setLocalization("ru_RU", "tile.crystalBlockearth.name", "Земляной Кристальный блок");
game.setLocalization("ru_RU", "tile.crystalBlockair.name", "Грозовой Кристальный блок");
game.setLocalization("ru_RU", "tile.crystalBlockorder.name", "Кристальный блок Порядка");
game.setLocalization("ru_RU", "tile.crystalBlockentropy.name", "Энтропийный Кристальный блок");
game.setLocalization("ru_RU", "tile.crystalBlockmixed.name", "Смешанный Кристальный блок");
game.setLocalization("ru_RU", "tile.crystalBlocktainted.name", "Зараженный Кристальный блок");
game.setLocalization("ru_RU", "tile.salisMundusBlock.name", "Блок Salis Mundus");
game.setLocalization("ru_RU", "tile.pyrofluid.name", "Пироплазма");
game.setLocalization("ru_RU", "tile.thauminiteBlock.name", "Блок Тауминита");
game.setLocalization("ru_RU", "tile.eldritchArk.name", "Обсидиан с Золотой гравировкой");
game.setLocalization("ru_RU", "tile.ironGreatwood.name", "Обрамленное Великое Дерево");
game.setLocalization("ru_RU", "tile.plax.name", "Нить-трава");
game.setLocalization("ru_RU", "tile.aurelia.name", "Аурелия");
game.setLocalization("ru_RU", "tile.aureliaPetal.name", "Лепесток Аурелии");
game.setLocalization("ru_RU", "tile.metalleat.name", "Стальная Рожь");
game.setLocalization("ru_RU", "tile.lucrite.name", "Скряжница");
game.setLocalization("ru_RU", "tile.knose.name", "Роза Мистерия");
game.setLocalization("ru_RU", "tile.sweed.name", "Сладкая Трава");
game.setLocalization("ru_RU", "tile.lazullia.name", "Лазурный Салат");
game.setLocalization("ru_RU", "tile.rainbowCactus.name", "Радужный кактус");
game.setLocalization("ru_RU", "tile.redlonStem.name", "Рэдбузный побег");
game.setLocalization("ru_RU", "tile.ashroom.name", "Висовик");
game.setLocalization("ru_RU", "tile.flaxium.name", "Лук-порчей");
game.setLocalization("ru_RU", "tile.glieonia.name", "Светлянка");
game.setLocalization("ru_RU", "tile.briar.name", "Шиповник");
game.setLocalization("ru_RU", "tile.tobacco.name", "Табак");
game.setLocalization("ru_RU", "tile.voidPlant.name", "Пустовика");
game.setLocalization("ru_RU", "tile.spikeiron.name", "Железные шипы");
game.setLocalization("ru_RU", "tile.spikethaumic.name", "Шипы из Таум-металла");
game.setLocalization("ru_RU", "tile.spikevoid.name", "Пустотные шипы");
game.setLocalization("ru_RU", "tile.goldenOakSapling.name", "Саженец Златолиста");
game.setLocalization("ru_RU", "tile.goldenOakLeaves.name", "Златолиства");
game.setLocalization("ru_RU", "tile.cryingObsidian.name", "Плачущий Обсидиан");
game.setLocalization("ru_RU", "tile.overchanter.name", "Стол Сверх-чарования");
game.setLocalization("ru_RU", "tile.TBoldCobblestone.name", "Древний Булыжник");
game.setLocalization("ru_RU", "tile.TBoldGravel.name", "Древний Гравий");
game.setLocalization("ru_RU", "tile.TBoldCobblestoneMossy.name", "Древний Замшелый булыжник");
game.setLocalization("ru_RU", "tile.advAlchFurnace.name", "Усиленная Алхимическая Печь");
game.setLocalization("ru_RU", "tile.entityDeconstructor.name", "Разделитель сущностей");
game.setLocalization("ru_RU", "tile.TBoldIron.name", "Древний Железный блок");
game.setLocalization("ru_RU", "tile.TBoldDiamond.name", "Древний Алмазный блок");
game.setLocalization("ru_RU", "tile.TBoldGold.name", "Древний Золотой блок");
game.setLocalization("ru_RU", "tile.TBoldLapis.name", "Древний блок Лазурита");
game.setLocalization("ru_RU", "tile.TBoldBricks.name", "Древние Кирпичи");
game.setLocalization("ru_RU", "tile.nodeManipulator.name", "Узел-манипулятор");
game.setLocalization("ru_RU", "tile.tb.slab.tile.TBoldLapis.name", "Плита из Древнего лазурита");
game.setLocalization("ru_RU", "tile.tb.slab.tile.TBoldIron.name", "Полублок Древнего железа");
game.setLocalization("ru_RU", "tile.tb.slab.tile.TBoldGold.name", "Полублок Древнего Золота");
game.setLocalization("ru_RU", "tile.tb.slab.tile.TBoldDiamond.name", "Древний Алмазный Полублок ");
game.setLocalization("ru_RU", "tile.tb.slab.tile.TBoldCobblestone.name", "Плита из Древнего булыжника");
game.setLocalization("ru_RU", "tile.tb.slab.tile.TBoldBricks.name", "Древняя кирпичная плита");
game.setLocalization("ru_RU", "tile.tb.slab.tile.TBoldCobblestoneMossy.name", "Плита из древнего замшелого булыжника");
game.setLocalization("ru_RU", "tile.tb.slab.tile.eldritchArk.name", "Обсидиановая плита с золотой гравировкой");
game.setLocalization("ru_RU", "tile.tb.crystalslab.air.name", "Грозовая Кристалльная плита");
game.setLocalization("ru_RU", "tile.tb.crystalslab.water.name", "Ледяная Кристалльная плита");
game.setLocalization("ru_RU", "tile.tb.crystalslab.fire.name", "Огненная Кристалльная плита");
game.setLocalization("ru_RU", "tile.tb.crystalslab.earth.name", "Земляная Кристалльная плита");
game.setLocalization("ru_RU", "tile.tb.crystalslab.order.name", "Кристалльная плита Порядка");
game.setLocalization("ru_RU", "tile.tb.crystalslab.entropy.name", "Энтропийная Кристалльная плита");
game.setLocalization("ru_RU", "tile.tb.crystalslab.mixed.name", "Смешанная Кристалльная плита");
game.setLocalization("ru_RU", "tile.tb.crystalslab.tainted.name", "Зараженная Кристалльная плита");
game.setLocalization("ru_RU", "tile.thaumicRelocator.name", "Магический транспортёр");
game.setLocalization("ru_RU", "tile.tb.voidblock.name", "Блок Пустотного Металла");
game.setLocalization("ru_RU", "tile.thaumicAnvil.intact.name", "Таум-Наковальня");
game.setLocalization("ru_RU", "tile.thaumicAnvil.slightlyDamaged.name", "Сколотая Таум-Наковальня");
game.setLocalization("ru_RU", "tile.thaumicAnvil.veryDamaged.name", "Разбитая Таум-Наковальня");
game.setLocalization("ru_RU", "tile.voidAnvil.intact.name", "Пустотная Наковальня");
game.setLocalization("ru_RU", "tile.voidAnvil.slightlyDamaged.name", "Сколотая Пустотная Наковальня");
game.setLocalization("ru_RU", "tile.voidAnvil.veryDamaged.name", "Разбитая Пустотная Наковальня");
game.setLocalization("ru_RU", "tile.peacefullTreeSapling.name", "Саженец Дерева Благодати");
game.setLocalization("ru_RU", "tile.netherTreeSapling.name", "Саженец Адского Дуба");
game.setLocalization("ru_RU", "tile.enderTreeSapling.name", "Саженец Эндер-ивы");
game.setLocalization("ru_RU", "tile.peacefullTreeLog.name", "Благодатная древесина");
game.setLocalization("ru_RU", "tile.netherTreeLog.name", "Адская древесина");
game.setLocalization("ru_RU", "tile.enderTreeLog.name", "Эндер-древесина");
game.setLocalization("ru_RU", "tile.peacefullTreeLeaves.name", "Благодатная листва");
game.setLocalization("ru_RU", "tile.netherTreeLeaves.name", "Адская листва");
game.setLocalization("ru_RU", "tile.enderTreeLeaves.name", "Эндер-ивовая листва");
game.setLocalization("ru_RU", "tile.enderPlanks.name", "Доски из Эндер-ивы");
game.setLocalization("ru_RU", "item.resourcenuggetthauminite.name", "Тауминитовый самородок");
game.setLocalization("ru_RU", "item.resourcethauminite.thauminite_ingot.name", "Слиток Тауминита");
game.setLocalization("ru_RU", "item.resourcethaumium_wand_core.name", "Таум-металлический стержень");
game.setLocalization("ru_RU", "item.resourcevoid_wand_core.name", "Пустотный стержень");
game.setLocalization("ru_RU", "item.resourceaurelia_petal.name", "Лепесток Аурелии");
game.setLocalization("ru_RU", "item.thauminiteAxe.name", "Тауминитовый топор");
game.setLocalization("ru_RU", "item.thauminiteHoe.name", "Тауминитовая мотыга");
game.setLocalization("ru_RU", "item.thauminiteShovel.name", "Тауминитовая лопата");
game.setLocalization("ru_RU", "item.thauminiteSword.name", "Тауминитовый меч");
game.setLocalization("ru_RU", "item.thauminiteShears.name", "Тауминитовые ножницы");
game.setLocalization("ru_RU", "item.thauminitePickaxe.name", "Тауминитовая кирка");
game.setLocalization("ru_RU", "item.thauminiteHelmet.name", "Шлем из Тауминита");
game.setLocalization("ru_RU", "item.thauminiteChest.name", "Кираса из Тауминита");
game.setLocalization("ru_RU", "item.thauminiteLegs.name", "Поножи из Тауминита");
game.setLocalization("ru_RU", "item.thauminiteBoots.name", "Ботинки из Тауминита");
game.setLocalization("ru_RU", "item.resourcethauminite.wand_cap_thauminite.name", "Тауминитовый наконечник");
game.setLocalization("ru_RU", "item.resourcebriar_seedbag.name", "Плод Шиповника");
game.setLocalization("ru_RU", "item.resourcetobacco_leaves.name", "Табачные Листья");
game.setLocalization("ru_RU", "item.pyrofluidBucket.name", "Ведро Пироплазмы");
game.setLocalization("ru_RU", "item.Wand.thauminite.cap", "Окованный Тауминитом");
game.setLocalization("ru_RU", "item.Wand.tbthaumium.rod", "Таум-металлический");
game.setLocalization("ru_RU", "item.Wand.tbvoid.rod", "Пустотный");
game.setLocalization("ru_RU", "item.plaxSeeds.name", "Семена Нить-травы");
game.setLocalization("ru_RU", "item.metalleatSeeds.name", "Семена Стальной Ржи");
game.setLocalization("ru_RU", "item.lucriteSeeds.name", "Семена Скряжницы");
game.setLocalization("ru_RU", "item.knoseSeed.name", "Росток Розы Мистерии");
game.setLocalization("ru_RU", "item.knoseFragment.fire.name", "Пламенный Фрагмент");
game.setLocalization("ru_RU", "item.knoseFragment.aqua.name", "Водный Фрагмент");
game.setLocalization("ru_RU", "item.knoseFragment.terra.name", "Земной Фрагмент");
game.setLocalization("ru_RU", "item.knoseFragment.air.name", "Воздушный Фрагмент");
game.setLocalization("ru_RU", "item.knoseFragment.order.name", "Фрагмент Порядка");
game.setLocalization("ru_RU", "item.knoseFragment.entropy.name", "Фрагмент Хаоса");
game.setLocalization("ru_RU", "item.knoseFragment.mixed.name", "Смешанный Фрагмент");
game.setLocalization("ru_RU", "item.knoseFragment.tainted.name", "Заражённый Фрагмент");
game.setLocalization("ru_RU", "item.sweedSeeds.name", "Семена Сладкой Травы");
game.setLocalization("ru_RU", "item.lazulliaSeeds.name", "Семена Лазурного Салата");
game.setLocalization("ru_RU", "item.redlonSeeds.name", "Семена Рэдбуза");
game.setLocalization("ru_RU", "item.glieoniaSeed.name", "Семена Светлянницы");
game.setLocalization("ru_RU", "item.rosehipSyrup.name", "Шиповниковый Сироп");
game.setLocalization("ru_RU", "item.greatwoodPipe.name", "Великодревесная Трубка");
game.setLocalization("ru_RU", "item.silverwoodPipe.name", "Серебродревесная Трубка");
game.setLocalization("ru_RU", "item.tobacco.tobacco_pile.name", "Горсть Табака");
game.setLocalization("ru_RU", "item.tobacco.tobacco_eldritch.name", "Табак Древних");
game.setLocalization("ru_RU", "item.tobacco.tobacco_fighting.name", "Табак Злобы");
game.setLocalization("ru_RU", "item.tobacco.tobacco_hunger.name", "Сытный Табак");
game.setLocalization("ru_RU", "item.tobacco.tobacco_knowledge.name", "Табак Тайной Мудрости");
game.setLocalization("ru_RU", "item.tobacco.tobacco_mining.name", "Шахтерский Табак");
game.setLocalization("ru_RU", "item.tobacco.tobacco_sanity.name", "Расслабляющий Табак");
game.setLocalization("ru_RU", "item.tobacco.tobacco_tainted.name", "Заражённый Табак");
game.setLocalization("ru_RU", "item.tobacco.tobacco_wispy.name", "Магический Табак");
game.setLocalization("ru_RU", "item.tobaccoSeeds.name", "Семена Табака");
game.setLocalization("ru_RU", "item.mortar.name", "Ступка с Пестом");
game.setLocalization("ru_RU", "item.voidSeed.name", "Семена Пустовики");
game.setLocalization("ru_RU", "item.resourcebloodycloth.name", "Кровавая Зачарованная Ткань");
game.setLocalization("ru_RU", "item.bloodyChest.name", "Кровавая Роба Тауматурга");
game.setLocalization("ru_RU", "item.bloodyLegs.name", "Кровавые Шаровары Тауматурга");
game.setLocalization("ru_RU", "item.bloodyBoots.name", "Кровавые Сапоги Тауматурга");
game.setLocalization("ru_RU", "item.concentratedTaint.name", "Концентрат Порчи");
game.setLocalization("ru_RU", "item.activationFoci.name", "Набалдашник: Активация");
game.setLocalization("ru_RU", "item.fluxFoci.name", "Набалдашник: Полотёр Порчи");
game.setLocalization("ru_RU", "item.drainFoci.name", "Набалдашник: Губка");
game.setLocalization("ru_RU", "item.experienceFoci.name", "Набалдашник: Опыт");
game.setLocalization("ru_RU", "item.nodeFoci.speed.name", "§eЛинза Манипулятора: Скорость");
game.setLocalization("ru_RU", "item.nodeFoci.brightness.name", "§eЛинза Манипулятора: Яркость");
game.setLocalization("ru_RU", "item.nodeFoci.destruction.name", "§eЛинза Манипулятора: Разрушение");
game.setLocalization("ru_RU", "item.nodeFoci.efficiency.name", "§eЛинза Манипулятора: Эффективность");
game.setLocalization("ru_RU", "item.nodeFoci.hunger.name", "§eЛинза Манипулятора: Голод");
game.setLocalization("ru_RU", "item.nodeFoci.instability.name", "§eЛинза Манипулятора: Нестабильность");
game.setLocalization("ru_RU", "item.nodeFoci.purity.name", "§eЛинза Манипулятора: Чистота");
game.setLocalization("ru_RU", "item.nodeFoci.sinister.name", "§eЛинза Манипулятора: Гибель");
game.setLocalization("ru_RU", "item.nodeFoci.stability.name", "§eЛинза Манипулятора: Стабилизация");
game.setLocalization("ru_RU", "item.nodeFoci.taint.name", "§eЛинза Манипулятора: Заражение");
game.setLocalization("ru_RU", "item.herobrinesScythe.name", "Коса Легендарного Херобрина");
game.setLocalization("ru_RU", "item.tb.voidShears.name", "Пустотный Секатор");
game.setLocalization("ru_RU", "item.tb.voidFAS.name", "Пустотное Огниво");
game.setLocalization("ru_RU", "tc.research_name.TB.CRUCIBLE", "Основы Алхимии");
game.setLocalization("ru_RU", "tc.research_text.TB.CRUCIBLE", "Буль-Буль");
game.setLocalization("ru_RU", "tc.research_name.TB.AdvancedEntropy", "Продвинутая Энтропия");
game.setLocalization("ru_RU", "tc.research_text.TB.AdvancedEntropy", "Крошечный Разрушитель!");
game.setLocalization("ru_RU", "tb.rec.advEntr.page.0", "Алхимия куда сложнее, чем вы думали! Раньше вы умели разрушать лишь простые предметы. Однако, вы нашли способ воздействовать и на другие вещи, помимо обыкновенных. Возможно, это еще не все, но вам нужно учиться усерднее.");
game.setLocalization("ru_RU", "tc.research_name.TB.MasterEntropy", "Высшая Энтропия");
game.setLocalization("ru_RU", "tc.research_text.TB.MasterEntropy", "Эффективность 110%!");
game.setLocalization("ru_RU", "tb.rec.mastEntr.page.0", "О да! Поэксперементировав, вы нашли оптимальную формулу, чтобы сохранять все материалы из шерсти и песка, но так же вами был открыт способ получать в два раза больше со стержней ифритов!");
game.setLocalization("ru_RU", "tc.research_name.TB.StrongEntropy", "Полное Разрушение");
game.setLocalization("ru_RU", "tc.research_text.TB.StrongEntropy", "Можно ли использовать тигель, как молот?");
game.setLocalization("ru_RU", "tb.rec.strEntr.page.0", "Вы нашли способ разрушать предметы до их первичного состояния. В результате процесса вещи разрушаются до составляющих. Однако, вам не удалось достичь 100% эффективности.");
game.setLocalization("ru_RU", "tc.research_name.TB.SimpleDublication", "Основы Удваивания");
game.setLocalization("ru_RU", "tc.research_text.TB.SimpleDublication", "Я думала у тебя чуть больше!");
game.setLocalization("ru_RU", "tb.rec.simDup.page.0", "Вы твёрдо решили мастерски овладеть Алхимией Удвоения! Вы решили начать с удваивания стрел, что ж, у вас получилось! К тому же, вы научились Преумножать(Внимание) СНЕЖКИ ну и, редстоун...мда.");
game.setLocalization("ru_RU", "tc.research_name.TB.OreDestruction", "Разрушение Руд");
game.setLocalization("ru_RU", "tc.research_text.TB.OreDestruction", "Воздействие Хаоса");
game.setLocalization("ru_RU", "tb.rec.oreDestr.page.0", "Используя ваши знания в Алхимии разрушения вы нашли способ применить его на рудах. Процесс требует больше аспектов, чтобы сохранить структуру кристаллов, требуется эссенция §5Praecantatio§0. Аспект разрушаемой руды также необходим, иначе руда просто растворится в тигеле. Пока что это лучшее, чего вам удалось достичь... пока...");
game.setLocalization("ru_RU", "tc.research_name.TB.Amber", "Делаем Янтарь");
game.setLocalization("ru_RU", "tc.research_text.TB.Amber", "Временная петля!");
game.setLocalization("ru_RU", "tb.rec.amber.page.0", "Вы нашли способ получения янтаря: просто добавляя чуть-чуть Vinculum к Еловой древесине. Довольно интересно, с другими деревьями это не работает.");
game.setLocalization("ru_RU", "tc.research_name.TB.DecoBlocks", "Декоративные блоки");
game.setLocalization("ru_RU", "tc.research_text.TB.DecoBlocks", "А он точно чёрно-золотой?");
game.setLocalization("ru_RU", "tb.rec.decoBlocks.page.0", "Долгое время Тауматурги использовали для декора лишь чёртов янтарь(о мой бог он везде). Чувство вкуса появилось лишь недавно, вот новинки из мира таум-моды:");
game.setLocalization("ru_RU", "tc.research_name.TB.Quicksilver", "Делаем Ртуть");
game.setLocalization("ru_RU", "tc.research_text.TB.Quicksilver", "А это не опасно?");
game.setLocalization("ru_RU", "tb.rec.cinnabar.page.0", "Каждый раз, раскалывая серебродревесные поленья вы задавались вопросом - что за пары выходят оттуда? Позже оказалось, что это пары Ртути! Вы придумали, как собрать их, используя Алхимию. Однако эта ртуть лишена способности кристаллизовываться, вы решили проблему, добавив чуть-чуть Venenum.");
game.setLocalization("ru_RU", "tc.research_name.TB.SM", "Удваивание Salis Mundus");
game.setLocalization("ru_RU", "tc.research_text.TB.SM", "Это вообще законно!?");
game.setLocalization("ru_RU", "tb.rec.sm.page.0", "Ваши последние исследования в алхимии натолкнули вас на мысль: Salis Mundus получается из кристалла, содержащего все первичные аспекты. Что если вымочить соль в их смеси, внутри тигеля? Что ж, просто этого недостаточно, чтобы соль не вскипала в тигеле, пришлось добавить немного §5Praecantatio§0, результат поражает, одна Salis Mundus хорошо, а две еще лучше!");
game.setLocalization("ru_RU", "tc.research_name.TB.AlchemyRestoration", "Алхимическое Восстановление");
game.setLocalization("ru_RU", "tc.research_text.TB.AlchemyRestoration", "Простое Очищение");
game.setLocalization("ru_RU", "tb.rec.alcRest.page.0", "Вы нашли способ упорядочивать вещи. Помещая блоки в эссенцию Ordo вы восстанавливаете их до былой сущности, например: Гравий до булыжника. Не то, чтобы вам нужен был булыжник, но все же. Тот же самый принцип работает с Плотным льдом, правда тут нужен Terra.");
game.setLocalization("ru_RU", "tc.research_name.TB.Backprocessing", "Возвращение к исходному");
game.setLocalization("ru_RU", "tc.research_text.TB.Backprocessing", "Предыдущий мне нравился больше");
game.setLocalization("ru_RU", "tb.rec.backProc.page.0", "Многие вещи, однажды разрушенные, не могут быть восстановлены, яичницу не "отжаришь" обратно... Погодите ка, вы ж Тауматург! Вы можете, да и еще и извлекая из этого выгоду! Вы научились возвращать вещи к исходному состоянию. Возвращать к жизни сахар конечно хорошо, но вам нужно что-то посложнее, но это требует затрат. Например, для восстановления стержня ифрита из порошка, нужен не только Ordo, Ignis и Praecantatio для жара, Potentia для возвращения функциональности, немного permutatio чтобы вернуть блеск, ну и немного Fabrico чтобы все склеить!");
game.setLocalization("ru_RU", "tc.research_name.TB.CrystalBlocks", "Кристалльные Блоки");
game.setLocalization("ru_RU", "tc.research_text.TB.CrystalBlocks", "Дед, а как было во втором Таумкрафте?");
game.setLocalization("ru_RU", "tb.rec.cBlocks.page.0", "После ряда экспериментов с Ordo в тигеле, вы поняли, что готовы к большему. Вы обнаружили, что помещая кластер в Ordo, Аспекты самого кластера и Fabrico, кристаллы разрастаются и формируют блок! Ну, вы пока не знаете, для чего нужны эти блоки, но они сохраняют все свойства кластеров. Как побочный продукт эксперимента, вами был открыт Зараженный кристальный блок. Для чего он, тоже не ясно... Ну и конечно же, все блоки стабилизируют Алтарь Наполнения.");
game.setLocalization("ru_RU", "tc.research_name.TB.SMB", "Блоки Salis Mundus");
game.setLocalization("ru_RU", "tc.research_text.TB.SMB", "Все еще незаконно");
game.setLocalization("ru_RU", "tb.rec.smb.page.0", "Следующим шагом будет научиться делать из неё блоки. Сложно сделать блок из горсти пыли, но вы нашли способ укрепить её аспектами. Вы не уверены, сможете ли использовать блок где-то кроме алтаря, для его стабилизации, но это станет ясно позднее.");
game.setLocalization("ru_RU", "tc.research_name.TB.Thauminite", "Тауминит");
game.setLocalization("ru_RU", "tc.research_text.TB.Thauminite", "Улучшенная Металлургия");
game.setLocalization("ru_RU", "tb.rec.thauminite.page.0", "Тауматурги всегда ищут лучшие материалы взамен старых. Вы уже достаточно наигрались с таум-металлом...может, пора двигаться дальше.Быть может, пора что-то улучшить . Таум-металл может быть обработан в тигеле, используя некоторое количество Vitreus. К сожалению, таум-металл разрушается во время этого процесса, вы так и не смогли полностью решить эту проблему. В результате вы получили новый металл. Твёрдый как алмаз и куда легче зачаровываемый, чем простой таум-металл. Также он обладает сильными магическими свойствами, и может быть использован там, где таум-металл не может...");
game.setLocalization("ru_RU", "tc.research_name.CAP_thauminite", "Тауминитовые наконечники");
game.setLocalization("ru_RU", "tc.research_text.CAP_thauminite", "Без наполнения!");
game.setLocalization("ru_RU", "tb.rec.capthauminite.page.0", "Тауматурги всегда ищут пути получить результат, не совершая лишних движений. Если Тауминит обладает свойствами таум-металла, почему бы не сделать из него наконечники? Результат странный, полученные наконечники энертны, но не заряжаются наполнением. Однако, добавив немного Salis Mundus, вы решили проблему. Конечно же это потребует больших затрат аспектов. Смотрятся куда лучше простых таум-наконечников, но вы чувствуете, что они способны на большее, неужто?");
game.setLocalization("ru_RU", "tc.research_name.TB.Pyrofluid", "Пироплазма");
game.setLocalization("ru_RU", "tc.research_text.TB.Pyrofluid", ""back to hell and back and back to hell and back and back to hell and back"");
game.setLocalization("ru_RU", "tb.rec.pyrofluid.page.0", "Иногда Тауматургу просто необходимо немного этого адского Огненного порошка. Но в аду жарко, опасно, и вообще у меня лапки. Наполнив ведро лавы необходимыми аспектами, вы создали жидкость, утратившую способность растекаться. Она медленно застывает, будучи вылитой на землю. Полностью застывшую жидкость нужно разбить, при этом она распадется на некоторое количество огненного порошка. Следует помнить, что пол - это лава, и не стоит купаться в Пироплазме...");
game.setLocalization("ru_RU", "tc.research_name.ROD_tbthaumium", "Таум-металлический стержень");
game.setLocalization("ru_RU", "tc.research_text.ROD_tbthaumium", "Там, где магия сталкивается с магией!");
game.setLocalization("ru_RU", "tb.rec.thaumRod.page.0", "Тауматурги никогда бы и не подумали использовать таум-металл для стержней. Но вы то не просто "Тауматург". Вы использовали свои знания, чтобы его создать. Но таум-металл сам по себе очень инертен и не может служить хранилищем вис, Salis Mundus как всегда решила проблему! Получившийся жезл очень даже ничего, может содержать до 80 вис каждого типа. Вы иногда видите молнии, проблескивающие на поверхности вашего жезла, но это только воображение, так?..");
game.setLocalization("ru_RU", "tc.research_name.ROD_tbvoid", "Пустотный Стержень");
game.setLocalization("ru_RU", "tc.research_text.ROD_tbvoid", "Взгляд в Пустоту");
game.setLocalization("ru_RU", "tb.rec.voidRod.page.0", "Что ж, после путешествия по искаженной бездне вашего разума, вы создали очень странный металл. Теперь вас посетила еще одна странная идея - что, если сделать из него жезл? Нужно сделать его безопасным, Порчеустойчивым, для этого вы использовали Зараженные блоки. В результате вы получили жезл, пульсирущий глубинной мощью. Наверное, нельзя иметь больше силы не погружаясь в пустоту снова и снова. И, кажется, жезл сам медленно восстанавливает аспекты - вы все гадаете, почему?..");
game.setLocalization("ru_RU", "tc.research_name.TB.Plax", "Нить-трава");
game.setLocalization("ru_RU", "tc.research_text.TB.Plax", "Волшебные ниточки");
game.setLocalization("ru_RU", "tb.rec.plax.page.0", "Иногда Тауматургу нужны нитки - для свечей или магической ткани, да не важно, для чего, ПРОСТО. НУЖНЫ. НИТКИ. И иногда Тауматург не хочет сражаться с пауками или ночами стричь овец, чтобы их получить. Вы решили проблему просто - пусть растения трудятся за вас. Вы создали траву, которая, вырастая, приносит урожай из 3-х длинных нитей! Растет оно, как обычная пшеница, нужен свет и немного воды.");
game.setLocalization("ru_RU", "tc.research_name.TB.BasicPlants", "Таум-Природа");
game.setLocalization("ru_RU", "tc.research_text.TB.BasicPlants", "Там, где магия сталкивается с природой");
game.setLocalization("ru_RU", "tb.rec.basicPlants.page.0", "Тауматургия изобилует направлениями. Алхимия, Наполнение, Зачарования... Тауматургия может все... Однако, большинство Тауматургов не принимают во внимания Растения. Однако, вы не "большинство". Это направление изобилует возможностями, и вам хватает глаз, чтобы их увидеть. Что ж, после долгих попыток соединить магию и растения, вы создали первое таум-растение - Сладкую Траву. Ну, по сути это...трава. Однако у взрослых растений стебли толстые, как тростник, а плоды сладкие, как сахар. Но не теряйте бдительность, трава быстро разрастается!");
game.setLocalization("ru_RU", "tc.research_name.TB.Knose", "Роза Мистерия");
game.setLocalization("ru_RU", "tc.research_text.TB.Knose", "Забытое растение из других миров...");
game.setLocalization("ru_RU", "tb.rec.knose.page.0", "Мудрый Тауматург хранит свои знания в книгах и записях - поэтому то по миру и разбросано стоооолько фрагментов знаний. Но, все живое имеет память, животные и люди используют свои мозги, зомби используют чужие мозги... а что насчет растений? У них ведь есть память, не так ли? Ну да ладно, почему бы просто не наполнить растение кучей Cognitio? Ну, результат, конечно...интересный. Только одно растение выжило после наполнение - Роза. Вы пробовали их посадить, чтобы вырастить. Но безуспешно, в целом.");
game.setLocalization("ru_RU", "tb.rec.knose.page.1", "Новорожденная Роза Мистерия слишком слаба для обычного грунта, она не может расти без источника аспектов. Вы пробовали удобрять её Salis Mundus, ноль. Вам кажется, что Кристаллические блоки достаточно рыхлые, чтобы посадить туда растение. Во время роста Роза будет вбирать аспекты из блока, в котором растет. Вместо семян вырастают фрагменты определенного типа, исходя из стихии кристаллов, на которых она росла. Фрагменты можно очистить в тигеле, получая обычные фрагменты знаний. Выращивание Роз на смешанных блоках даёт смешанные фрагменты. Вам в голову пришла странная идея вырастить Розу на Зараженном блоке, это не сулит ничего хорошего...");
game.setLocalization("ru_RU", "tc.research_name.TB.Lazullia", "Лазурный Салат");
game.setLocalization("ru_RU", "tc.research_text.TB.Lazullia", "Там, где магия встречается с Красотой");
game.setLocalization("ru_RU", "tb.rec.lazullia.page.0_ec3", "Иногда, Тауматургу нужно немножко Лазурита для...Тауматургии. И иногда Тауматург слишком ленивый, чтобы пойти в пещеру и потратить(в лучшем случае) 5 часов в поисках этой синей руды. Вы же используете для этого растения. Разурный Салат медленно растет, но однажды вы пожнете урожай. Во время жатвы вы получите немного долгожданного лазурита. <LINE> Так же растение взаимодействует с Essential Craft И кристаллизует на листьях немного Митриллиновой пыли. ");
game.setLocalization("ru_RU", "tb.rec.lazullia.page.0", "Иногда, Тауматургу нужно немножко Лазурита для...Тауматургии. И иногда Тауматург слишком ленивый, чтобы пойти в пещеру и потратить(в лучшем случае) 5 часов в поисках этой синей руды. Вы же используете для этого растения. Разурный Салат медленно растет, но однажды вы пожнете урожай. Во время жатвы вы получите немного долгожданного лазурита. ");
game.setLocalization("ru_RU", "tc.research_name.TB.RainbowCacti", "Радужный Кактус");
game.setLocalization("ru_RU", "tc.research_text.TB.RainbowCacti", "Вырасти Радугу, попробуй Радугу!");
game.setLocalization("ru_RU", "tb.rec.rainCacti.page.0", "Магия не всегда действует в рамках логики - все таки это магия. То же самое относится и к Природе - её творения разнообразны, временами жутковатые, временами веселые. Ну, вас посетила идея создать растение, которое является воплощением слова "Веселье". Полученный вид похож на обычный кактус, так же растет на песке 3 блока в высоту. Однако, если его собрать, вы не получите кактус. Вместо этого он взорвётся радужным фонтаном из различных типов красителей, правда, кактус не может создавать белый и синий цвета . Также вами было замечено, что с большей вероятностью выпадает Зеленый.");
game.setLocalization("ru_RU", "tc.research_name.TB.Metalleat", "Стальная Рожь");
game.setLocalization("ru_RU", "tc.research_text.TB.Metalleat", "Обогащена железом ");
game.setLocalization("ru_RU", "tb.rec.metalleat.page.0", "Иногда Тауматургу нужно немного Metallum для трансмутации руд, он использует железный слиток. А иногда Тауматургу нужен Metallum для наполнения и он использует больше железных слитков. Но вы - маг, а не шахтер,  вы решили эту проблему - Наполнив семена пшеницы Metallum и Victus, для поддержания жизни, вы получили всходы, что растут в точности как пшеница, но их колосья твердые и металлические. Вместо зерен пшеницы при жатве вы получаете немного железных самородков. Это открытие зажигает в вас интерес...вы не остановитесь, пока не проделаете то же самое с таум-металлом .");
game.setLocalization("ru_RU", "tc.research_name.TB.Lucrite", "Скряжница ");
game.setLocalization("ru_RU", "tc.research_text.TB.Lucrite", "Дядя Скруджи?");
game.setLocalization("ru_RU", "tb.rec.lucrite.page.0", "Получше изучив стальную рожь, вы обнаружили, что можете создать похожее растение, наполнив его Lucrum, выбор пал на морковь. Растение вышло, кхм, странноватое. Принцип схож со Стальной рожью, но растет оно гораздо медленней. Растение так же сильно зависимо от магии, без мощного её источника под землей, рост останавливается. Блоки Salis Mundus подходят как нельзя лучше. Обычная костная мука поглощается растением в куда больших объемах. Если дать растению вырасти, вы сможете собрать с его веточек золотые самородки. Так же есть шанс, что вы найдете под кустом редкую золотую морковку.");
game.setLocalization("ru_RU", "tc.research_name.TB.Aurelia", "Аурелия");
game.setLocalization("ru_RU", "tc.research_text.TB.Aurelia", "Древнее Растение");
game.setLocalization("ru_RU", "tb.rec.aurelia.page.0", "В ваших исследованиях всегда был один аспект, который невероятно сложно добыть - Auram. Аспект имеет бесконечное множество применений, но чтобы его получить, нужно уничтожать узлы ауры, что весьма печально, или погружаться в пучину ада, чтобы убить пару виспов, что еще печальнее(может закончиться для вас). Вы, как обычно, ничего не выбираете, и используете Магию Растений.");
game.setLocalization("ru_RU", "tb.rec.aurelia.page.1", "Выведенное вами растение, находясь под луной, раскрывает свои лепестки, кажется, оно питается лунным светом. Правда, растение раскрывается только в полнолуние. После полнолуния растение начнет терять лепестки, и их можно будет в большом количестве обнаружить на земле вокруг. Лепестки эти невероятно богаты Auram. Чтобы питаться светом луны, растение должно находиться на открытой местности.");
game.setLocalization("ru_RU", "tc.research_name.TB.Redlon", "Рэдбуз");
game.setLocalization("ru_RU", "tc.research_text.TB.Redlon", "А скорлупки не простые...");
game.setLocalization("ru_RU", "tb.rec.redlon.page.0", "Будучи магическим искусством, Тауматургия почти никак не связана с миром технологий, множество магических устройств использует эту чудесную пыль - Красный камень. На самом деле Рэдстоун имеет отношение к магии. А что, если соединить его с растением? В результате получилось растение, которое будет медленно выращивать...Блок красного камня, прямо как арбуз. Что занимает куда больше времени, чем выращивание просто арбузов.");
game.setLocalization("ru_RU", "tc.research_name.TB.Ashroom", "Первородные Грибы");
game.setLocalization("ru_RU", "tc.research_text.TB.Ashroom", "к-кто пьяный, я?");
game.setLocalization("ru_RU", "tb.rec.ashroom.page.0", "Тысячелетиями Висоморы отравляли жизнь тауматургам. Что они такое? Почему их так много в Магическом Лесу? Для чего они могут пригодиться? Вы нашли ответы на все вопросы. Кажется, Висоморы это своеобразные хранилища аспектов... утратившие способность выбрасыва их в окружающую среду. Кто сотворил такое с бедными грибочками, не ясно, но вы можете восстановить эту способность. Если дать вырасти вашим новым грибам, названными Висовиками, они выбросят в воздух споры - сферы первичных аспектов!");
game.setLocalization("ru_RU", "tc.research_name.TB.Flaxium", "Лук-Порчей");
game.setLocalization("ru_RU", "tc.research_text.TB.Flaxium", "Ревизорро:Огорчило!");
game.setLocalization("ru_RU", "tb.rec.flaxium.page.0", "Получилось неплохо, лучок-порчок. У вас и в мыслях не было создавать его, но, кажется, слегка поздновато переживать по этому поводу. Созданный в припадке безумия цветок собирает зараженную слизь неподалеку и тут же выпускает ее над собой в виде зараженного газа. Вы не до конца уверены в полезности цветка, но его способность собирать аспекты вокруг себя делает его интересным, возможно, это начало чего-то большего?..");
game.setLocalization("ru_RU", "tc.research_name.TB.Glieonia", "Светлянница");
game.setLocalization("ru_RU", "tc.research_text.TB.Glieonia", "Светлая память Светланы");
game.setLocalization("ru_RU", "tb.rec.glieonia.page.0", "Итак, что самое крутое в Тауматургии? Полёт! Ну э...что второе по крутости? Набалдашник укрепления? Ну, а третье-то... Набалдашник копания, серьезно? Я говорю про Нитор, ок, да?! Господи боже мой. Как бы то ни было, Нитор до прекрасного восхитителен - он сияет, от него исходят приятные глазу искорки, и вообще создает милую атмосферу праздника! Но, для его создания требуется Светопыль... Бесконечно §6М§3удр§0ый Тауматург учёл этот нюанс! Он создал растение со светопылью вместо обычной пыльцы. Растение не светится, пока не вырастет полностью...почему же так?.. Киты Никогда не Умирают");
game.setLocalization("ru_RU", "tc.research_name.TB.Briar", "Шиповник");
game.setLocalization("ru_RU", "tc.research_text.TB.Briar", "Природная аптека");
game.setLocalization("ru_RU", "tb.rec.briar.page.0", "Многие растения известны благодаря своим лекарственным свойствам. Но Тауматургов это не интересует, им все равно. Но не вам. Вы решили вернуть Розу в её дикую форму, трансформируя её в куст Шиповника. Шиповник - быстрорастущее растение 2 блока в высоту. Когда плоды на нём созревают, они могут быть собраны для дальнейшего использования. Из них можно сделать Шиповниковый сироп, смешав их сок с сахаром на магическом верстаке. Работает как "улучшенное молоко" Пузырьки сиропа складываются по 16, а так же убирают эффекты временного искажения. Жалко, что сироп не помогает избавиться от голосов...");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco", "Магический Табак");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco", "Без вреда для лёгких!");
game.setLocalization("ru_RU", "tb.rec.tobacco.page.0", "Иногда Тауматургу нужно отдохнуть от ужасов Тауматургии. Иногда он хочет просто расслабиться, очистить разум и сконцентрироваться на новом исследовании. Другие тауматурги курят табак для этой цели, но курение здорово вредит здоровью, что может привести даже к разрыву связи с магическим миром. Нет, увольте, это не для вас. Вы решили создать растение, схожее по свойствам с табаком, но абсолютно безопасным для вашего здоровья! К сожаленнию, вы уверены, что никто, кроме вас не сможет создать такой же. Ну и ладно.");
game.setLocalization("ru_RU", "tb.rec.tobacco.page.1", "Для полноценного отдыха Тауматургу вроде вас нужны три вещи - Дом с верандой, прямо как у вас, Курительная трубка и немного табака. Чтобы сделать табак пригодным для курения, его нужно высушить и измельчить. Вам понадобится Пест и ступка. И вам все еще нужна трубка, но вы не будете пользоватсья обычными, не так ли? Вы нашли способ. Также это, в какой-то мере развивает ваши магические способности, из-за Salis Mundus в составе трубки.");
game.setLocalization("ru_RU", "tb.rec.tobacco.page.2", "От курения обычного табака Тауматург ничего не имеет, только рак лёгких, кхе-кхе. Но у вас вовсе не обычный табак, как и трубка. Есть небольшой шанс избавиться от временного искажения, просто покуривая трубку. Вы уверены, что после некоторых манипуляций вы сможете сделать табак более полезным, вам осталось только понять, что именно нужно сделать. Табак сгорает в процессе курения. Трубка выбирает ближайший табак из карманов тауматурга, прямо как лук выбирает стрелы. Великий Тауматург может позволить себе длительный отдых, вы же можете?");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco.Eldritch", "Табак Древних");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco.Eldritch", "Безумный Взгляд");
game.setLocalization("ru_RU", "tb.rec.etobacco.page.0", "Вы обнаружили способ наполнить обычный табак энергией Древних. Полученный табак не столь безопасен для здоровья, зрение его помутнится, глаза наполнит древняя тьма. После курения данного вида табака лучше избегать зрительных контактов с живыми. Также есть небольшая вероятность привлечь древних стражей запахом. Осторожно:Может вызвать помутнение рассудка!");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco.Wispy", "Табак с Виспами");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco.Wispy", "В клубах дыма я вижу искру жизни...");
game.setLocalization("ru_RU", "tb.rec.wtobacco.page.0", "Что будет, если добавить больше магии в табак? Вопрос конечно интересный, но ответ куда более занимательный! Вы нашли способ наполнить табак магической энергией напрямую. Результат эксперимента, похоже, почти безопасен для курения - никаких негативных последствий для организма не наблюдается. Когда вы попробовали выкурить немного, небольшой сгусток магии вырвался из трубки - Висп. Выглядит довольно злым, наверное, потому, что Виспы не любят закрытых пространств. Или это может быть из-за дыма?");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco.Angry", "Табак Злобы");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco.Angry", "Скрестим трубки!");
game.setLocalization("ru_RU", "tb.rec.atobacco.page.0", "Когда-то давно вы слышали легенду о Неистовых Воинах-гладиаторах, которые курили табак перед каждой битвой. Они были поистине ужасающими воителями - не ведая боли, с неистовой яростью рассекали они плоть своих врагов. Давным давно они исчезли, а секрет их Ярости? Вы обнаружили способ наполнить табак магией злобы, чтобы ощутить их ярость. Выкурите немного этого табака перед битвой - и вы разорвете своих врагов на части, как те Воины!");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco.Mining", "Табак Шахтера");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco.Mining", "Волшебная скорость");
game.setLocalization("ru_RU", "tb.rec.mtobacco.page.0", "Вы слышали о какой-то волшебной траве, скурив листья которой люди получали такую силу, что могли разбивать камень голыми руками в считанные секунды! Древние восточные сказания. Невозможно ломать камень руками, но вы все же решили создать табак, который хотя бы поможет вам с работой в шахте. Покурив перед походом в шахту вы сможете копать куда быстрее, а так же табак помогает лучше ориентироваться в темноте.");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco.Wisdom", "Табак Знаний");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco.Wisdom", "Мудрость, сокрытая в пепле");
game.setLocalization("ru_RU", "tb.rec.witobacco.page.0", "Вы уже далеко ушли от просто расслабляющих свойств. Наполнить табак своими собственными знаниями было хорошей идеей, вы получили табак, дающий вам прилив вдохновения и скрытой мудрости, когда вы его курите. Эффект длится всего пару секунд, но это более, чем достаточно для пары-тройки шокирующих открытий. Но все же, вы боитесь, что такой способ получения знаний может стоить вам ясности ума... ну, кто не рискует, тот не пьет шампанское, верно?");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco.Tainted", "Заражённый Табак");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco.Tainted", "Искажение Разума");
game.setLocalization("ru_RU", "tb.rec.ttobacco.page.0", "Вы не уверены, зачем вы вообще решили этим заняться. С другой стороны, вы теперь точно уверены, что можете наполнить табак энергией заражения, и всякий, кто его скурит навсегда исказит свой разум, ужасы из бездны ворвутся в его мысли, но для чего еще это нужно? Порча оставляет странные символы на трубке курящего. Вы заинтересованы эффектом, который эти символы оказывают на серебряное дерево... похоже, это не сулит ничего хорошего.");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco.Saturating", "Сытный табак");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco.Saturating", "Ешь.Пей.Жуй.Дуй");
game.setLocalization("ru_RU", "tb.rec.stobacco.page.0", "Вы нашли способ избавляться от чувства голода. Выкуривая смесь табака с семенами и небольшим миксом аспектов, вы заставляете ваше тело думать, что оно насытилось. Как вы уже догадались, это довольно опасно, так как вы не получаете пищу, но это может помочь вам без нервов просидеть ночь-другую не отрываясь от исследований. Частое использование негативно сказывается на физической форме.");
game.setLocalization("ru_RU", "tc.research_name.TB.Tobacco.Sanity", "Расслабляющий Табак");
game.setLocalization("ru_RU", "tc.research_text.TB.Tobacco.Sanity", "То, что доктор прописал");
game.setLocalization("ru_RU", "tb.rec.satobacco.page.0", "Ни для кого не секрет, что многие Тауматурги покуривают "дурь", чтобы "расслабиться". Вам вовсе не сдалось такое расслабление, нет. Эти идиоты не понимают, что потеряют свои магические силы, если продолжат! Правда, вашему разуму нужен отдых, от Искажения. Конечно магический табак позволяет это делать, но вы ведь можете сделать лучше?.. Вы создали лучший табак, он успокаивает нервы и снимает временное искажение.");
game.setLocalization("ru_RU", "tc.research_name.TB.SilverwoodPipe", "Серебродревесная Трубка");
game.setLocalization("ru_RU", "tc.research_text.TB.SilverwoodPipe", "Очищающий Дым");
game.setLocalization("ru_RU", "tb.rec.silverPipe.page.0", "Большинство видов табака, созданных вами, безопасны. Но не все. Единственным решением для этой проблемы напрашивается трубка получше. Серебряная древесина подойдет идеально. Она обладает куда более мощными магическими свойствами, чем великодревесная и для нее нужен процесс посложнее, чем магический крафт. Серебродревесная трубка - лучшая трубка, она убиирает негативные эффекты, даруемые некоторыми видами табака, а иногда превращает их в положительные.");
game.setLocalization("ru_RU", "tc.research_name.TB.VoidSeed", "Семена Пустоты");
game.setLocalization("ru_RU", "tc.research_text.TB.VoidSeed", "На этот раз действительно семена");
game.setLocalization("ru_RU", "tb.rec.voidSeed.page.0", "Семена пустоты создаются путем наполнения обычных семян кучей Alienis и Tenebrae. При этом семечко теряет способность к росту, вы его перенасыщаете. Но похоже, семя можно вернуть к жизни, ипользуя полученные знания в магии растений! Наполняя семя пустоты всеми видами земных растений, вы надеетесь вернуть бедному семечку способность к росту.Вы не уверены, что это сработает, но §6M§3udresistor§0 обещал, что все получится. ");
game.setLocalization("ru_RU", "tc.research_name.TB.Spike.Iron", "Железные Шипы");
game.setLocalization("ru_RU", "tc.research_text.TB.Spike.Iron", "Ай, колется!");
game.setLocalization("ru_RU", "tb.rec.spikeIron.page.0", "Иногда Тауматургу нужно просто посидеть и поизучать. Спокойно, в одиночестве и без толпы зомби вокруг. Конечно, иногда просто двери будет достаточно. А иногда Тауматург хочет, чтобы эти твари страдали. Жаль,что в Тауматургиинет инструментов для пассивного убийства врагов... или есть? Вы создали блок, который будет наносить урон всем, кто встанет на него. Также он уничтожает предметы, оброненные растяпами. Должно быть решение для этой проблемы... Тауматург так же должен понимать, что убитые существа пачкают шипы кровью. Стереть кровь с шипов можно кусочком магической ткани. Смыть кровь с ткани можно в тигеле.");
game.setLocalization("ru_RU", "tc.research_name.TB.Spike.Thaumic", "Таум-шипы");
game.setLocalization("ru_RU", "tc.research_text.TB.Spike.Thaumic", "Магическая Ловушка");
game.setLocalization("ru_RU", "tb.rec.spikeThaumic.page.0", "Вы решили улучшить ваши шипы, используя таум-металл. Новые шипы получились острее - они убивают существ, наступивших на них в два раза быстрее. Также они куда более щепетильны, когда дело касается убийств - они не разрушают упавшие на них предметы. Они, к тому же, чувствительны к рэдстоун-сигналу и не будут наносить урон, когда подключены.");
game.setLocalization("ru_RU", "tc.research_name.TB.Spike.Void", "Пустотные шипы ");
game.setLocalization("ru_RU", "tc.research_text.TB.Spike.Void", "Кровь стынет вне жил");
game.setLocalization("ru_RU", "tb.rec.spikeVoid.page.0", "Вы решили использовать этот странный металл из тьмы для создания шипов. Получившиеся шипы крайне опасны - они почти мгновенно убивают всех, кто их коснется . Как и Таум-шипы, они не уничтожают предметы. И тоже реагируют на рэдстоун. Ещё они убивают с большей точностью,  сохраняя опыт и аспекты с убитых. Так же шипы не могут нанести вред тому, кто носит Пустотный металл...");
game.setLocalization("ru_RU", "tc.research_name.TB.BloodyRobes", "Кровавое одеяние тауматурга");
game.setLocalization("ru_RU", "tc.research_text.TB.BloodyRobes", "Красные розы расцветают");
game.setLocalization("ru_RU", "tb.rec.bloodyRobes.page.0", "Вы не уверены, что это хорошая идея, но вы обнаружили, что окровавленная ткань не теряет своих свойств, и, поэтому, может быть использована в качестве материала для одежды. Довольно странно, что ткань, чуть-чуть испачканная кровью так ярко сияет красным. Может быть это какая-то особая магия? В любом случае, по необъяснимым причинам вы чувствуете себя сильнее, чем в обычном одеянии Тауматурга . Другие Тауматурги интересуются, из чего сделаны ваши сияющие одежды, но вы храните свой кровавый секрет ...");
game.setLocalization("ru_RU", "tc.research_name.TB.Foci.Drain", "Набалдашник: Губка");
game.setLocalization("ru_RU", "tc.research_text.TB.Foci.Drain", "Ктооооооо!");
game.setLocalization("ru_RU", "tb.rec.drainFoci.page.1", "Кто проживает на дне океана?! §m - ТА-У-МА-ТУРГ ! §r Но, постройка подводного дома это невероятно сложная работа...была, до сегодняшнего дня. Проблему решил набалдашник! Он уничтожает блоки воды, которые укажет маг, не давая соседним блокам растекаться! Говоря другим языком - идеальный инструмент для создания подводных тоннелей! Но, магия не может сдерживать воду вечно, через некоторое время вода растечется. То же самое произойдет, если поставить блок рядом с "искуственно" стоячей водой.");
game.setLocalization("ru_RU", "tb.rec.drainFoci.page.1", "<LINE>§l       Аквакристалл §r<LINE>Доступен с 3 уровня, улучшение позволяет получать кристаллизованную эссенцию из воды во время разрушения. Существует 10% шанс того, что набалдашник исказит процесс и создаст эссенцию Venenum.");
game.setLocalization("ru_RU", "tb.rec.drainFoci.page.2", "<LINE>§l      Жидкое пламя §r<LINE>Доступен с 3 уровня, это улучшение позволяет набалдашнику разрушать лаву. Лава-блоки точно так же перестают быть текучими. Набалдашник сохраняет способность разрушать воду. Уничтожение лавы стоит 3 аспекта §c§lIgnis§r§0  за блок. Улучшение "Бережливость" уменьшает количество.");
game.setLocalization("ru_RU", "tc.research_name.TB.Foci.Experience", "Набалдашник: Опыт");
game.setLocalization("ru_RU", "tc.research_text.TB.Foci.Experience", "Не бывает старых опытных сапёров");
game.setLocalization("ru_RU", "tb.rec.expFoci.page.0", "Два пути зачарования имеются для Тауматургов: Попытать удачу, используя опыт на столе зачарования, или же использовать матрицу, чтобы контроллировать процесс. В любом случае требуется опыт. Самый эффективный способ его заработать - это...Убивать мобов? Копать? Вам кажется, что для Тауматурга должен существовать более "магический" способ. И вы недалеки от истины. Набалдашник, будучи направленным на блок, моментально превращает его в опыт! Количество получаемого опыта зависит от типа блока и от мощи набалдашника.");
game.setLocalization("ru_RU", "tb.rec.expFoci.page.1", "<LINE>§l     Разложение §r<LINE>Доступно на уровнях 3 и 5, улучшение позволяет моментально превратить в опыт любое живое существо, получаемый опыт зависит от количества жизней существа, как и стоимость разложения. <BR>§lУровень II§r вдвое уменьшает стоимость.<BR>§lНесовместимо с §6Выпариванием§0§l!§r");
game.setLocalization("ru_RU", "tb.rec.expFoci.page.2", "<LINE>§l      Выпаривание §r<LINE>Доступно на уровнях 3 и 5, Улучшение позволяет набалдашнику получать кристаллизованную эссенцию из уничтожаемых блоков с 50% шансом. Некоторые особо богатые аспектами блоки не дают получить из них эссенцию. <BR>§lУровень II§r увеличивает шанс получения эссенции до 100%<BR>§lНесовместимо с  §6Разложением§0§l!§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Foci.Flux", "Набалдашник: Полотёр Порчи");
game.setLocalization("ru_RU", "tc.research_text.TB.Foci.Flux", "Волшебная швабра");
game.setLocalization("ru_RU", "tb.rec.fluxFoci.page.0", "Полотёры хорошо работают, но они неуправляемы. Было бы неплохо надеть его на посох и убираться в свое удовольствие, сложно, но возможно! Полученный набалдашник убирает зараженную слизь и газ. Да, да, швабра Swiffer.");
game.setLocalization("ru_RU", "tb.rec.fluxFoci.page.1", "<LINE>§l       Искажение §r<LINE>Доступно на 3 уровне, набалдашник будет искажать разум владельца при использовании, повышая уровень временного искажения.<BR>§lНесовместимо §6Кристаллизацией§0§l!§r");
game.setLocalization("ru_RU", "tb.rec.fluxFoci.page.2", "<LINE>§l       Очищение §r<LINE>Доступно на 5 уровне, при наличии §6Искажения§0, улучшение полностью снимает эффект улучшения §6Искажение§0. Набалдашник успокаивает разум владельца при использовании.<BR>§lНесовместимо с §6Кристаллизацией§0§l!§r");
game.setLocalization("ru_RU", "tb.rec.fluxFoci.page.3", "<LINE>§l   Кристаллизация §r<LINE>Доступно на уровнях 3 и 5, улучшение позволяет получать из убранной порчи эссенцию Potentia.<BR>§lУровень II§r вы будете получать случайную эссенцию вместо potentia<BR>§lНесовместимо с §6Искажением§0§l и §6Очищением§0§l!§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Foci.Activation", "Набалдашник: Активация");
game.setLocalization("ru_RU", "tc.research_text.TB.Foci.Activation", "Удаленный доступ");
game.setLocalization("ru_RU", "tb.rec.actFoci.page.0", "После того, как вы подробно изучили зеркальную магию и свойства зеркал передавать предметы при контакте, почему бы не сделать способ бесконтактным? Но это оказалось куда сложнее, чтобы разобраться в окружающем вас хаосе, вы создали набалдашик. Набалдашник работает очень просто - нажав жезлом или посохом Shift+ПКМ по нужному блоку\сундуку, вы создатите образ внутри набалдашника. После этого, нажатие пкм в воздух жезлом будет иметь эффект ПКМ на том блоке. However, радиус ограничен, 32 блока. Некоторые хранилища так же не могут быть открыты с помощью набалдашника, потому что они немагические.");
game.setLocalization("ru_RU", "tb.rec.actFoci.page.1", "<LINE>§l       Мощь §r<LINE>Доступно на всех уровнях, улучшение увеличивает радиус на 10 блоков. Набалдашник не работает в непрогруженных чанках!");
game.setLocalization("ru_RU", "tc.research_name.TB.AdvAlc", "Усиленная Алхимическая печь");
game.setLocalization("ru_RU", "tc.research_text.TB.AdvAlc", "Раздувая пламя");
game.setLocalization("ru_RU", "tb.rec.advAlc.page.0", "Вас невероятно бесит то, с какой скоростью работает алхимическая печь. Должен быть способ ускорить эту чёртову штуку! Может, добавить больше мехов... но это мелочи. Но, почему бы не направлять меха прямо в горнило, используя Aer? Да, у вас получилось, но вы расплавили печь, кхм. Не беда, можно укрепить печь устойчивым к расплавлению таум-металлом! Вы создали печь, работает точно так же, но в два, нет, в ТРИ раза быстрее! Однако, поддержание такой скорости работы требует Алюментум в качестве топлива. Используя меха, скорость можно еще увеличить.");
game.setLocalization("ru_RU", "tc.research_name.TB.CryingObs", "Плачущий обсидиан");
game.setLocalization("ru_RU", "tc.research_text.TB.CryingObs", "Условия для сна");
game.setLocalization("ru_RU", "tb.rec.cryingObs.page.0", "Если Тауматург погибнет, он возродится у кровати, на которой последний раз спал. Но кровати так ненадежны, они взрываются, а еще это "спать можно только ночью". И конечно же, "вы не можете спать, когда рядом находятся враги", "вы перегружены и не можете бежать". Но самое страшное это "Эта кровать принадлежит не вам". Достаточно! Наполнив обсидиан свойствами кровати, вы создали Плачущий обсидиан. Поставьте два блока друг на друга и вы получите Тотем. ПКМ по нему установит точку респавна, к тому же тотем безопасен для использования в аду. Если вы поспите на кровати, точка респавна вернется к ней.");
game.setLocalization("ru_RU", "tc.research_name.TB.Overchanter", "Сверх-Чарование");
game.setLocalization("ru_RU", "tc.research_text.TB.Overchanter", "Раздвигая Границы");
game.setLocalization("ru_RU", "tb.rec.overchanter.page.0", "Тауматурги часто используют магию, чтобы наполнить ей земные предметы, дабы усилить их свойства. Это называется Зачарованием. Тауматурги так же нашли способ зачаровывать вещи на алтаре, делая чары еще сильнее. Однако, всегда существовало ограничение на силу чар, которые можно наложить на предмет... Вы решили попробовать снять это ограничение, хотя бы чуть-чуть. Вы создали стол Сверх-Чарования, дающий возмонжность увеличить максимальный уровень чар на 1. Стол не просто поднимает уровень чар, он позволяет получать эффекты по типу: Удача IV, или Острота VI.");
game.setLocalization("ru_RU", "tb.rec.overchanter.page.1", "Стол будет улучшать первое не Сверх-Зачарование на предмете. Сверх-чарование происходит 1 раз, невозможно сделать остроту VII или что-то наподобие. Сверх-чарование возможно для любых чар, так что вполне  возможно сделать Шёлковое касание II, но зачем? Для Зачарования предмета просто положите его на стол, затем два раза кликните жезлом по нему. Затем вам понадобится эссенция Praecantatio, она будет автоматически взята из ближайших банок. Также необходимо присутствие игрока, так как в середине процесса столу понадобится 30 уровней, они будут вытянуты из ближайшего игрока в радиусе 6 блоков!");
game.setLocalization("ru_RU", "tb.rec.overchanter.page.2", "Сверх-чарование можно остановить, просто забрав предмет со стола, но опыт и эссенция будут израсходованы в пустую. Стол вытягивает эссенцию в радиусе 8 блоков, стол так же работает с зеркалами. Опыт вытягивается столом единовременно и из одного человека, поэтому не удастся использовать нескольких людей с суммарным уровнем 30. Любой зачарованный предмет можно сверх-зачаровать, если вы положите на стол незачарованный предмет, ничего не произойдет.");
game.setLocalization("ru_RU", "tc.research_name.TB.EntityDec", "Разделитель Сущностей");
game.setLocalization("ru_RU", "tc.research_text.TB.EntityDec", "Животрепещущее знание");
game.setLocalization("ru_RU", "tb.rec.eDec.page.0", "Иногда Тауматургу требуется больше знаний для продолжения исследований. Конечно он может отправиться исследовать мир или использовать Стол Расщепления, а что ещё? Вы создали устройство, медленно убивающее существ и передающее их знания прямо в мозг владельца. Чтобы стать "владельцем" устройства, кликните по нему ПКМ жезлом. Но, знание, проходя сквозь пространство может исказить разум того, кому поступает.");
game.setLocalization("ru_RU", "tc.research_name.TB.GoldenOak", "Таум-Дендрология");
game.setLocalization("ru_RU", "tc.research_text.TB.GoldenOak", "Грызть кору Науки");
game.setLocalization("ru_RU", "tb.rec.goldenOak.page.0", "Как оказалось, наполнению магией поддаются не только цветы и трава. У деревьев тоже неплохой магический потенциал! Отличаются они тем, что их физическая природа сильнее простых модификаций. Наполнение на алтаре решило проблему! В качестве первого эксперимента вы создали Златолист. Дерево похоже на обычный дуб, и иногда на нем растут яблоки...золотые! Правда дерево неспособно вырастить на себе мистическое Зачарованное яблоко. Из-за того, что дерево наполнено эссенцией жадности, оно почти не дает побегов, так как хочет быть единственным, чье место - под солнцем.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeMan", "Управление Узлами");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeMan", "ВСЁ под контролем!");
game.setLocalization("ru_RU", "tb.rec.nodeMan.page.0", "Вы нашли способ поддерживать узлы стабильными. Вы обнаружили способ разорвать материю узла, открывая черную дыру. И это всё? Это нечестно, их столько вокруг: Голодные, Чистые, Заражённые, они могут быть яркими или увядающими... Но другие Тауматурги это не изучают. Вы можете управлять материей узла, делая его стабильным. Или же возбудить его, разрывая связь. Почему бы не использовать эти силы, чтобы управлять состоянием узла? Их что-то останавливает или же они просто глупцы, блуждающие во мраке, думая, что они боги Тауматургии? §6M§3udresistor§0 открыл вам глаза.");
game.setLocalization("ru_RU", "tb.rec.nodeMan.page.1", "Свершилось. Никто не пришел вас остановить. Никто не убил вас, ничто не поселилось у вас в голове, да вообще ничего не произошло! Вы все еще в недоумении, почему другие не занялись этим раньше. Вы создали устройство, сочетающее в себе свойства Стабилизатора и Преобразователя. Правда, все не так просто, вам нужно направлять потоки вис, поэтому понадобятся зеркала, также при процессе выделяется энергия порчи, поэтому вы добавили в конструкцию Полотёры. Для стабилизации конструкции нужно много магической силы, блоки Salis Mundus отлично подошли. И вот оно, перед вами - устройство, меняющее структуру узла!");
game.setLocalization("ru_RU", "tb.rec.nodeMan.page.2", "И опять же, не всё так просто. Ваше устройство может манипулировать только обычными узлами. Также вам требуется вертикальный поток Вис, так что устройство можно разместить только над узлом. В процессе выяснилось, что устройство довольно...бесполезное. Устройство не может менять структуру узлов само по себе, энергия рассеивается. Некоторые изменения есть, но пока что это просто добавка к стабилизации. Нужна фокусирующая линза. Вы пробовали использовать Набалдашники - ничего не вышло, кроме кучи злых виспов. Линза должна использовать тот же принцип - преобразовывать сырую энергию устройства в направленный поток. ");
game.setLocalization("ru_RU", "tb.rec.nodeMan.page.3", "Устройство полностью стабильно, и, фактически ничего не требует для работы. Линзы, изобретенные вами впоследствии, помещаются в нижнюю часть устройства, фокусируя его энергию. Чтобы вставить линзу, нажмите ей ПКМ по устройству. ПКМ рукой - вытащить линзу. ПКМ другой линзой, чтобы заменить одну на другую, это так же позволяет сохранить прогресс от различных линз, что позволяет экономить немало времени!");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Speed", "Линза Манипулятора: Скорость");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Speed", "Путь к успеху лежит через Восстановление");
game.setLocalization("ru_RU", "tb.rec.foci.speed.page.0", "Линза скорости увеличивает скорость восстановления узла в 5 раз. Сложно увидеть этот эффект на полном узле, но стоит только вытянуть немного вис жезлом, все сразу становится понятно.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Sinister", "Линза Манипулятора: Гибель");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Sinister", "Маленький Спавнер");
game.setLocalization("ru_RU", "tb.rec.foci.sinister.page.0", "Воздействие линзы медленно превращает узел в Зловещий. Работает только с Обычными узлами. Превращение занимает 6 минут.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Unstable", "Линза Манипулятора: Нестабильность");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Unstable", "Встряхиваем узел");
game.setLocalization("ru_RU", "tb.rec.foci.unstable.page.0", "Воздействие линзы медленно превращает узел в Нестабильный. Работает только с Обычными узлами. Превращение занимает 7 минут.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Efficiency", "Линза Манипулятора: Эффективность");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Efficiency", "Мал вис, да дорог");
game.setLocalization("ru_RU", "tb.rec.foci.efficiency.page.0", "Линза эффективности довольно интересно воздействует на узел. При вытягивании аспектов, есть 50% шанс, что аспект не будет потрачен. Данный эффект работает со всеми конструкциями, использующими вис...");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Bright", "Линза Манипулятора: Яркость");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Bright", "Делаем жизнь ярче");
game.setLocalization("ru_RU", "tb.rec.foci.bright.page.0", "Воздействие линзы медленно превращает узел в Яркий. Работает только с Обычными узлами. Превращение занимает 20 минут.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Destr", "Линза Манипулятора: Разрушение");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Destr", "Узловое ослабление");
game.setLocalization("ru_RU", "tb.rec.foci.destr.page.0", "Линза Разрушения будет медленно разрушать узел, на который направлена. Разрушение идет постепенно: Яркий-Обычный-Тусклый-Увядающий, затем узел полностью исчезнет. Вис из разрушаемого узла вытекает в виде сфер аспектов, происходит это в 10 раз быстрее, чем обычное вытягивание вис из узла.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Hunger", "Линза Манипулятора: Голод");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Hunger", "Предельно ясно, что делает эта линза");
game.setLocalization("ru_RU", "tb.rec.foci.hunger.page.0", "Воздействие линзы медленно превращает узел в Голодный. Работает только с Обычными узлами. Учитывайте, что Манипулятор может быть съеден узлом, если тому заблагорассудится. Превращение занимает 5 минут. Mudresistor, создатель линзы, не несет ответственности за то что может случиться с вами, вашим домом, другими домами, вашим измерением и всей мультивселенной, а также животными, мобами и игроками. Создавая Линзу, вы автоматически берете на себя ответственность за все что может случиться со всем, что окружает узел.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Purity", "Линза Манипулятора: Чистота");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Purity", "Прочь, Скверна");
game.setLocalization("ru_RU", "tb.rec.foci.pure.page.0", "Воздействие линзы медленно превращает узел в Чистый. Работает только с Обычными узлами. Превращение занимает 3 минуты. Учтите, что узел не получит новые аспекты, которые обычно есть в Чистых узлах, но будет создавать вокруг биом магического леса.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Stability", "Линза Манипулятора: Стабилизация");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Stability", "Спасение утопающих");
game.setLocalization("ru_RU", "tb.rec.foci.stability.page.0", "Стабилизирующая линза будет постепенно восстанавливать узлы. Превращение увядающего узла в тусклый занимает 5 минут. Тусклого в Нормальный 10. Можно также превратить Зловещий узел в обычный, займет 2 минуты, Нестабильный в обычный, займёт 7 минут. Превращение в обычный голодного узла занимает 30 секунд(хоть бы успеть).");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeFoci.Taint", "Линза Манипулятора: Заражение");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeFoci.Taint", "Зачем ты все портишь?");
game.setLocalization("ru_RU", "tb.rec.foci.taint.page.0", "Воздействие линзы медленно превращает узел в Заражённый. Работает только с Обычными узлами. Превращение займет 6 минут. Учтите, что узел не получет дополнительных аспектов, но будет создавать вокруг биом "Зараженные Земли".");
game.setLocalization("ru_RU", "tc.research_name.TB.Enchantments", "Новые Зачарования!");
game.setLocalization("ru_RU", "tc.research_text.TB.Enchantments", "Магическое Перерождение!");
game.setLocalization("ru_RU", "tb.rec.enchantments.page.0", "Любой Тауматург уже наверняка освоил какие-либо новые чары, помимо стандартных, используя для этого свой опыт и магию. Эти новые зачарования являются воплощениями желаний юных магов.");
game.setLocalization("ru_RU", "tb.rec.enchantments.page.1", "Оружие с зачарованием "Древнее Знание" позволяет использовать знания убитых существ.");
game.setLocalization("ru_RU", "tb.rec.enchantments.page.2", "Оружие с зачарованием "Погибель Древних" наносит в 3 раза больше урона Эндерменам и Древним.");
game.setLocalization("ru_RU", "tb.rec.enchantments.page.3", "Оружие, зачарованное "Магическим Лезвием" рассекает магическую сущность убитых, давая больше сфер аспектов.");
game.setLocalization("ru_RU", "tb.rec.enchantments.page.4", "Оружие, зачарованное "Выпариванием" будет кристаллизовывать эссенцию, содержащуюся в телах ваших жертв.");
game.setLocalization("ru_RU", "tb.rec.enchantments.page.5", "Оружие, наполненное энергией заражения будет наносить дополнительный урон Магическим Ядом. Магический яд не действует на Зараженных существ. Чтобы наполнить оружие, тауматург должен бросить его в сердце Vitium Зараженного узла и подождать, пока энергия наполнит лезвие. Уровень чар случаен и достигает уровня 3.");
game.setLocalization("ru_RU", "tc.research_name.TB.EntityDecAdv", "Улучшения для Разделителя Сущностей");
game.setLocalization("ru_RU", "tc.research_text.TB.EntityDecAdv", "Как горячий нож в масло!");
game.setLocalization("ru_RU", "tb.rec.eDeca.page.0", "Вы решили, что пора улучшить ваши знания о Разделении. Вам показалось, что ваш Разделитель слишком нестабилен, непостоянен для ежедневного использования. Временами он просто разрушает знания, превращая их в искажение. Вы нашли способ бороться с этим. Вы обнаружили, что возможно поместить кристаллические блоки в разделитель, просто нажимая ими по нему. Он будет стабилизирован силой кристаллов. Кристаллы всех шести типов могут быть использованы.");
game.setLocalization("ru_RU", "tb.rec.eDeca.page.1", "Каждый блок увеличивает радиус передачи на 10 блоков. А также уменьшают шанс искажения знаний. Мало того, каждый кристалльный блок делает устройство быстрее. Если все 6 блоков помещены в Разделитель, он будет иметь бесконечный радиус действия и не будет искажать ваш разум, станет полностью стабильным. Вдобавок к этому, он станет невероятно быстрым и получит возможность расщеплять предметы. Предметы не всегда будут давать аспекты, но с куда большим шансом, чем стол расщепления. Расщепление предметов даёт только первичные аспекты.");
game.setLocalization("ru_RU", "tc.research_name.TB.HerobrinesScythe", "Коса из кошмаров каждого Стива");
game.setLocalization("ru_RU", "tc.research_text.TB.HerobrinesScythe", "Ваш худший кошмар...");
game.setLocalization("ru_RU", "tb.rec.hScythe.page.0", "Вы увидили её во сне. Став одержимым видениями о ней, вы создали её копию, она нереальна, не из этого мира. Куда еще может вас завести ваше безумие - одному Херобрину известно. В любом случае, Коса невероятно сложна в изготовлении, но выглядит многообещающе. Все имеющиеся знания о смерти нужны, чтобы создать такое.");
game.setLocalization("ru_RU", "tb.rec.hScythe.page.1", "Это оружие невероятной мощи, не только, потому что наносит сумасшедший урон, каждый раз, когда коса вгрызается в плоть, она создает волну энергии. Энергия перескакивает со скоростью молнии между врагами, нанося такой же урон, как и сама Коса. Как и пустотная мотыга, из которой она сделана, коса будет самовосстанавливаться. Другие Тауматурги начали по-настоящему бояться вас, с тех пор, как вы создали эту штуковину - они шепчутся о ваших глазах, совершенно белых глазах. Вы уверены что они просто кучка трусливых глупцов, ведь так?..");
game.setLocalization("ru_RU", "tc.research_name.TB.Relocator", "Таум-Перемещение");
game.setLocalization("ru_RU", "tc.research_text.TB.Relocator", "Вперед-Назад");
game.setLocalization("ru_RU", "tb.rec.relocator.page.0", "Магические подъемники. Вы всегда гадали - почему их нельзя ставить на стены? Вы нашли способ улучшить подъемники, позволяя размещать их на стенах и потолке. Вдобавок, вы немного изменили рецепт и добавили вместо нитора алюментум, в результате получив устройство, которое притягивает, а не толкает. Оба полученных устройства имеют размеры и ограничения Магического подъемника, так как сделаны с его использованием.");
game.setLocalization("ru_RU", "tc.research_name.TB.ThaumicAnvil", "Таум-Наковальня");
game.setLocalization("ru_RU", "tc.research_text.TB.ThaumicAnvil", "Почему они раньше до этого не додумались?");
game.setLocalization("ru_RU", "tb.rec.thaumicAnvil.page.0", "Вам надоели эти наковальни. Они ломаются от пары ударов и высасывают вашу жизненную эссенцию, будто чёрные дыры для опыта! Вы использовали Таум-металл, чтобы создать улучшенную версию наковальни. Таум-наковальня куда прочнее железной, при этом она сохраняет все её свойства! <BR>Таум-металл при всём своем земном происхождении все-же магический металл, он увеличивает максимальный уровень починки до 60. Судя по-всему за несколько починок подряд цена остается одинаковой, каждый раз, будто первый!");
game.setLocalization("ru_RU", "tc.research_name.TB.VoidAnvil", "Пустотная Наковальня");
game.setLocalization("ru_RU", "tc.research_text.TB.VoidAnvil", "Починка в квадрате");
game.setLocalization("ru_RU", "tb.rec.voidAnvil.page.0", "Что ж, Таум-металл хорош, но он все же ломается.. Как только вы открыли пустотный металл, вас посетила идея. Отчего бы и не сделать из него наковальню? Результат...интересный.<BR>Во-первых, естественно, наковальня сохранила возможность пустотного металла самовосстанавливаться. Наковальня автоматически починится, если заменить блок под ней. Наковальня так же действует совсем по-другому, любое действие, будь то починка зачарованного инструмента или зачарование очень сложной книгой - всё будет стоить вам 7 уровней.");
game.setLocalization("ru_RU", "tb.rec.voidAnvil.page.1", "Наковальня не увеличивает стоимость при многократной починке, как и таум.<BR>Во время починки вы заметили, как Пустотный металл затекает в трещины на вашем орудии, но ничего страшного, так ведь?");
game.setLocalization("ru_RU", "tc.research_name.TB.EnderSapling", "Эндер-Ива");
game.setLocalization("ru_RU", "tc.research_text.TB.EnderSapling", "Воспоминания о Крае");
game.setLocalization("ru_RU", "tb.rec.enderTree.page.0", "Вы решили объединить ваши знания о мире, под названием Край и магию растений. Это дерево, наполненное энергией Края, будет замещать земные блоки под собой на блоки из того измерения - Эндерняк и обсидиан. В переплетении ветвей дерева материя между мирами очень зыбкая и, время от времени, существа из Края могут проникнуть в этот мир, правда, большие существа, вроде драконов, не смогут пройти. Древесина этого дерева может быть использована для создания взрывоустойчивых досок.");
game.setLocalization("ru_RU", "tc.research_name.TB.NetherSapling", "Адский Дуб");
game.setLocalization("ru_RU", "tc.research_text.TB.NetherSapling", "Всполохи на ветвях");
game.setLocalization("ru_RU", "tb.rec.netherTree.page.0", "Вы объединили ваши знания об адских порталах и магию растений. В результате вы получили дерево, способное создавать маленькие порталы в своих ветвях. Эти порталы слишком малы, чтобы их увидеть, но энергия нижнего мира прорывается через них, превращая земные блоки в их адские эквиваленты. Временами различные адские твари прорываются через порталы. Древесина этого дерева имеет свойства адского камня - она не сгорает и не дает огню распространяться, но горит вечно.");
game.setLocalization("ru_RU", "tc.research_name.TB.PeacefulSapling", "Дерево Благодати");
game.setLocalization("ru_RU", "tc.research_text.TB.PeacefulSapling", "Цветы Жизни");
game.setLocalization("ru_RU", "tb.rec.peacefulTree.page.0", "Вы заметили, что все живые существа тянутся к свету. И вы так же заметили, что они появляются из ниоткуда в совершенно разных местах. Вы изучили этот эффект и создали дерево, которое притягивает к себе все виды животных. Животные, обитающие в биоме, где растет Древо, будут временами появляться в его ветвях. Вам следует постоянно следить за популяцией, иначе они все заполонят!");
game.setLocalization("ru_RU", "tc.research_name.TB.INFUSIONENCHANTMENT", "Зачарование Наполнением");
game.setLocalization("ru_RU", "tc.research_text.TB.INFUSIONENCHANTMENT", "Зачаровываем Эссенцией");
game.setLocalization("ru_RU", "tc.research_name.TB.THAUMIUM", "Магическая металлургия");
game.setLocalization("ru_RU", "tc.research_text.TB.THAUMIUM", "Когда металл встречается с магией");
game.setLocalization("ru_RU", "tc.research_name.TB.VOIDMETAL", "Пустотный металл");
game.setLocalization("ru_RU", "tc.research_text.TB.VOIDMETAL", "Странно, он должен быть холоднее...");
game.setLocalization("ru_RU", "tc.research_name.TB.INFUSION", "Наполнение предметов магией");
game.setLocalization("ru_RU", "tc.research_text.TB.INFUSION", "Мистическое наполнение");
game.setLocalization("ru_RU", "tc.research_name.TB.ENCHFABRIC", "Зачарованная ткань");
game.setLocalization("ru_RU", "tc.research_text.TB.ENCHFABRIC", "Гладкая и стильная");
game.setLocalization("ru_RU", "tc.research_name.TB.FOCUSEXCAVATION", "Набалдашник: Копание");
game.setLocalization("ru_RU", "tc.research_text.TB.FOCUSEXCAVATION", "Земляной коллапс");
game.setLocalization("ru_RU", "tc.research_name.TB.JARVOID", "Пустотная Банка");
game.setLocalization("ru_RU", "tc.research_text.TB.JARVOID", "Избыток эссенции? Быть того не может!");
game.setLocalization("ru_RU", "tc.research_name.TB.FLUXSCRUB", "Полотёр Порчи");
game.setLocalization("ru_RU", "tc.research_text.TB.FLUXSCRUB", "Уборщик за неряшливым тауматургом");
game.setLocalization("ru_RU", "tc.research_name.TB.MIRRORHAND", "Волшебное Зеркальце");
game.setLocalization("ru_RU", "tc.research_text.TB.MIRRORHAND", "Личное отражение");
game.setLocalization("ru_RU", "tc.research_name.TB.DISTILESSENTIA", "Очистка эссенции");
game.setLocalization("ru_RU", "tc.research_text.TB.DISTILESSENTIA", "Получаем эссенцию");
game.setLocalization("ru_RU", "tc.research_name.TB.BELLOWS", "Магические меха");
game.setLocalization("ru_RU", "tc.research_text.TB.BELLOWS", "Раздувая пламя");
game.setLocalization("ru_RU", "tc.research_name.TB.NODESTABILIZERADV", "Улучшенный Узел-Стабилизатор");
game.setLocalization("ru_RU", "tc.research_text.TB.NODESTABILIZERADV", "Выборочная стабилизация");
game.setLocalization("ru_RU", "tc.research_name.TB.VISPOWER", "Приручение Вис");
game.setLocalization("ru_RU", "tc.research_text.TB.VISPOWER", "Силу людям");
game.setLocalization("ru_RU", "tc.research_name.TB.PRIMPEARL", "Сингулярная жемчужина");
game.setLocalization("ru_RU", "tc.research_text.TB.PRIMPEARL", "Что было до");
game.setLocalization("ru_RU", "tc.research_name.TB.LEVITATOR", "Магический подъемник");
game.setLocalization("ru_RU", "tc.research_text.TB.LEVITATOR", "Следующая по крутости вещь для полета");
game.setLocalization("ru_RU", "tc.research_name.TB.ElderKnowledge", "Древнее Знание");
game.setLocalization("ru_RU", "tc.research_text.TB.ElderKnowledge", "Знания забытых богов");
game.setLocalization("ru_RU", "tc.research_name.TB.EldritchBane", "Погибель Древних");
game.setLocalization("ru_RU", "tc.research_text.TB.EldritchBane", "Вы им всем покажете");
game.setLocalization("ru_RU", "tc.research_name.TB.MagicTouch", "Магическое Лезвие");
game.setLocalization("ru_RU", "tc.research_text.TB.MagicTouch", "Волшебно рубит!");
game.setLocalization("ru_RU", "tc.research_name.TB.Vaporising", "Выпаривание");
game.setLocalization("ru_RU", "tc.research_text.TB.Vaporising", "Переносной Кристаллизатор");
game.setLocalization("ru_RU", "tc.research_name.TB.Tainted", "Заражение");
game.setLocalization("ru_RU", "tc.research_text.TB.Tainted", "Чума на оба ваших дома!");
game.setLocalization("ru_RU", "tb.txt.knoseFragment", "ПКМ, чтобы получить Знание");
game.setLocalization("ru_RU", "tb.txt.howlBelow", "В глубинах мира что-то воет...");
game.setLocalization("ru_RU", "tb.txt.howlDeeper", "Вы слышите вой из-под бедрока, вам нужно глубже...");
game.setLocalization("ru_RU", "tb.txt.taintDevelop", "Что это было? Вы должны записать и хорошо запомнить то, что сейчас случилось!");
game.setLocalization("ru_RU", "tb.txt.spawnSet", "Точка респавна установлена!");
game.setLocalization("ru_RU", "tb.foci.aquatic.name", "Аквакристалл");
game.setLocalization("ru_RU", "tb.foci.aquatic.desc", "Вода кристаллизуется в эссенцию под действием набалдашника ");
game.setLocalization("ru_RU", "tb.foci.netheric.name", "Жидкое пламя");
game.setLocalization("ru_RU", "tb.foci.netheric.desc", "Набалдашник действует на лаву.");
game.setLocalization("ru_RU", "tb.foci.decomposing.name", "Разложение");
game.setLocalization("ru_RU", "tb.foci.decomposing.desc", "Позволяет получать опыт из живых существ.");
game.setLocalization("ru_RU", "tb.foci.vaporizing.name", "Выпаривание");
game.setLocalization("ru_RU", "tb.foci.vaporizing.desc", "Набалдашник получает возможность кристаллизовывать эссенцию из блоков.");
game.setLocalization("ru_RU", "tb.foci.warping.name", "Искажение");
game.setLocalization("ru_RU", "tb.foci.warping.desc", "Уборка будет искажать ваш разум");
game.setLocalization("ru_RU", "tb.foci.crystalization.name", "Кристаллизация ");
game.setLocalization("ru_RU", "tb.foci.crystalization.desc", "Слизь кристаллизуется в эссенцию Potentia. На уровне II в случайную эссенцию");
game.setLocalization("ru_RU", "tb.foci.calming.name", "Очищение");
game.setLocalization("ru_RU", "tb.foci.calming.desc", "Убирает эффект улучшения Искажение. При использовании удаляет временное и постоянное искажение владельца");
game.setLocalization("ru_RU", "tile.nodeLinker.name", "Узел-объединитель");
game.setLocalization("ru_RU", "tile.tb.campfire.name", "Костёр Тауматурга");
game.setLocalization("ru_RU", "tile.tb.brazier.name", "Сигнальный огонь Тауматурга");
game.setLocalization("ru_RU", "item.tb.revolver.name", "Револьвер Тауматурга");
game.setLocalization("ru_RU", "item.tb.bracelet.iron", "Железный Браслет ");
game.setLocalization("ru_RU", "item.tb.bracelet.gold", "Золотой Браслет");
game.setLocalization("ru_RU", "item.tb.bracelet.greatwood", "Великодревесный Браслет ");
game.setLocalization("ru_RU", "item.tb.bracelet.thaumium", "Tаум-Браслет");
game.setLocalization("ru_RU", "item.tb.bracelet.silverwood", "Серебродревесный Браслет ");
game.setLocalization("ru_RU", "item.tb.bracelet.reed", "Тростниковый Браслет ");
game.setLocalization("ru_RU", "item.tb.bracelet.bone", "Костяной Браслет");
game.setLocalization("ru_RU", "item.tb.bracelet.obsidian", "Обсидиановый Браслет");
game.setLocalization("ru_RU", "item.tb.bracelet.ice", "Ледяной Браслет");
game.setLocalization("ru_RU", "item.tb.bracelet.blaze", "Огненный Браслет");
game.setLocalization("ru_RU", "item.tb.bracelet.quartz", "Кварцевый Браслет");
game.setLocalization("ru_RU", "item.tb.bracelet.void", "Пустотный Браслет");
game.setLocalization("ru_RU", "item.tb.bracelet.primal", "Сингулярный Браслет");
game.setLocalization("ru_RU", "revolverUpgrade.ACCURACY.name", "Точность");
game.setLocalization("ru_RU", "revolverUpgrade.POWER.name", "Сила");
game.setLocalization("ru_RU", "revolverUpgrade.SILVER.name", "Серебрянные пули");
game.setLocalization("ru_RU", "revolverUpgrade.POISONED.name", "Отравленные пули");
game.setLocalization("ru_RU", "revolverUpgrade.BANE_OF_ATROPODS.name", "Бич Членистоногих");
game.setLocalization("ru_RU", "revolverUpgrade.BANE_OF_ELDRITCH.name", "Погибель Древних");
game.setLocalization("ru_RU", "revolverUpgrade.PIERCING.name", "Пробой");
game.setLocalization("ru_RU", "revolverUpgrade.DUELING.name", "Дуэль");
game.setLocalization("ru_RU", "revolverUpgrade.TAINTED.name", "Заражение");
game.setLocalization("ru_RU", "revolverUpgrade.PRIMAL.name", "Первородный");
game.setLocalization("ru_RU", "revolverUpgrade.SPEED.name", "Скорострельность");
game.setLocalization("ru_RU", "revolverUpgrade.EFFICIENCY.name", "Эффективность");
game.setLocalization("ru_RU", "revolverUpgrade.ELDRITCH.name", "Древность");
game.setLocalization("ru_RU", "revolverUpgrade.VOID.name", "Пустота");
game.setLocalization("ru_RU", "revolverUpgrade.KNOWLEDGE.name", "Познание");
game.setLocalization("ru_RU", "revolverUpgrade.HEAVY.name", "Тяжеловесность");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver", "Револьвер Тауматурга");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver", "Бэнг-бэнг-бэнг-бэнг!!!");
game.setLocalization("ru_RU", "tb.rec.revolver.page.0", "Тауматургия предоставляет множество видов оружия. Особенно хороши те, которые позволяют поражать цели издалека. Правда, таких крайне мало. Конечно есть костяной лук, но...это лук. Хоть он и наполнен магией, все равно носителю приходится натягивать тетиву. Кто-то из вас скажет: "А как же набалдашники"?! Безусловно, они хороши, но...где Настоящее оружие? Набалдашники крайне неудобны, они надеваются на жезлы . А что, если Тауматург предпочитает скипетры? Ему...придётся делать жезл специально для набалдашников? Серьезно? Некоторые набалдашники, при всём при этом, не работают в определённых условиях... Вернее сказать, в определённых местах...");
game.setLocalization("ru_RU", "tb.rec.revolver.page.1", "Вы уже давно хотели сконструировать что-то подобное, но получилось у вас именно сегодня. Довольно странная штуковина, не слишком тяжёлая,  удобно лежит в руке. Вы назвали эту штуку "Револьвер". Нет, откуда вы это взяли, неизвестно.<BR>Полученное устройство позволяет выпускать невероятно маленькие частицы с огромной скростью, эти частицы наносят разрушительный урон. Ваше оружие имеет Магическое происхождение, следовательно и его снаряды  - они создаются из сырой эссенции Telum, помещенной в банку внутри Револьвера. Одной единицы аспекта хватает на два выстрела. Для перезарядки Shift+ЛКМ Револьвером. Нажатие Shift также позволяет лучше прицеливаться. ПКМ, что бы выстрелить, конечно же, я думал, это очевидно.");
game.setLocalization("ru_RU", "tb.rec.revolver.page.2", "Револьвер, по всей видимости, имеет огромный потенциал для улучшений, вы уверены, их ТОННЫ. Вы считаете, что наполнение прекрасно подойдет для этой цели. Вам еще только предстоит открыть способы улучшений. Некоторые улучшения могут быть несовместимы друг с другом и, посему, не могут быть установлены вместе. Так же будет полезно напомнить, что увеличение уровня улучшения будет сказываться на стабильности алтаря и стоимости эссенций.");
game.setLocalization("ru_RU", "tc.research_name.TB.NodeLinker", "Объединение Узлов");
game.setLocalization("ru_RU", "tc.research_text.TB.NodeLinker", "От одного к другому!");
game.setLocalization("ru_RU", "tb.rec.nodeLink.page.0", "Узлы Ауры. Штуки, что связывают мир людей и мир бесконечных потоков Вис. Они активно используются в Тауматургии - устройства используют их в качестве источника энергии, а вы заряжаете свои жезлы. Ho с ними есть небольшая проблемка - Узел может хранить в себе только тот Вис, что в нем есть, скажем, если в нем нет Terra, то вы не сможете получить его оттуда. Конечно можно использовать "Бои Узлов", когда один узел пожирает другой, более слабый. С открытием улучшенного стабилизатора можно применять такой метод эффективнее, но это занимает до смешного много времени и крайне неэффективно в целом.");
game.setLocalization("ru_RU", "tb.rec.nodeLink.page.1", "Вы создали устройство, ускоряющее этот процесс. Узел-Объединители создают между двумя узлами энергетический канал, передающий аспекты из одного узла в другой. Для начала нужно разместить по Узел-Объединителю на двух узлах. Затем ПКМ посохом или жезлом по Акцепторному Объединителю(Узел, который принимает аспекты). Затем нажмите на Донорский Объединитель и процесс передачи начнется. Устройство сначала вытягивает все аспекты из Донора, затем разрушает его и передает все вытянутые аспекты Акцептору. Не все аспекты передаются полностью, для каждой единицы аспекта шанс передачи где-то 70%.");
game.setLocalization("ru_RU", "tb.rec.nodeLink.page.2", "Процесс передачи очень нестабилен, для обеих сторон. Оба узла будут производить зараженную слизь. Чем дольше поддерживается связь, тем нестабильнее процесс. В зависимости от уровня нестабильности будут происходить различные вещи - начиная от кучи Виспов, заканчивая взрывом Устройств и Донорского узла. Узел - акцептор не будет поврежден в любом случае.");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Accuracy", "Улучшение револьвера: Точность");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Accuracy", "В яблочко!");
game.setLocalization("ru_RU", "tb.rec.revolver.acc.page.0", "Вы открыли способ улучшить качество прицеливания вашего Револьвера. С этим улучшением ваши глаза станут лучше фокусироваться на цели, когда вы стреляете, позволяя целиться лучше.<BR>Максимальный уровень: §6§l3 §r§0<BR>Конфликтует с: §nСкорость§r, §0§nЭффективность§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Atropods", "Улучшение револьвера: Бич Членистоногих");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Atropods", "Нейротоксин");
game.setLocalization("ru_RU", "tb.rec.revolver.atr.page.0", "Вы открыли способ улучшить свой револьвер против пауков и чешуйниц. Это улучшение сделает револьвер гораздо более эффективным против этих существ, и не повлияет на эффективность против остальных.<BR>Максимальный уровень: §6§l 5 §r§0<BR>Конфликтует с: В§nСила§r, §0В§nСеребрянные пули§r, §0§nПогибель Древних§r, §0§nДуэль§r, §0§nДревность§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.EldritchBane", "Улучшение револьвера: Погибель Древних");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.EldritchBane", "За голову Стражей назначена награда");
game.setLocalization("ru_RU", "tb.rec.revolver.elb.page.0", "Вы открыли способ улучшить свой револьвер против эндерменов и Древних. Это улучшение сделает револьвер гораздо более эффективным против этих существ, и не повлияет на эффективность против остальных.<BR>Максимальный уровень: §6§l 5 §r§0<BR>Конфликтует с: §nСила§r, §0§nСеребрянные пули§r, §0§nБич Членистоногих§r, §0§nДуэль§r, §0§nДревность§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Dueling", "Улучшение револьвера: Дуэль");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Dueling", "Легионка на ФП!");
game.setLocalization("ru_RU", "tb.rec.revolver.duel.page.0", "Иногда тауматургу необходимо доказать свою правоту не только словами, но и физически. До открытия револьвера, это могло быть сделано только при помощи земных мечей и луков. Теперь, тауматург и его обидчик могут решить свои проблемы как два джентльмена - своими пушками! Это улучшение сделает револьвер гораздо более эффективным против других игроков, и не затронет эффективность против остальных.<BR>Максимальный уровень: §6§l 5 §r§0<BR>Конфликтует с: §nСила§r, §0§nСеребрянные пули§r, §0§nБич Членистоногих§r, §0§nПогибель Древних§r, §0§nДревность§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Efficiency", "Улучшение револьвера: Эффективность");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Efficiency", "Бери всё, не отдавай ничего!");
game.setLocalization("ru_RU", "tb.rec.revolver.eff.page.0", "Вы открыли способ уменьшить затраты Telum в револьвере. Каждый уровень улучшения будет уменьшать затраты на 1 единицу эссенции.<BR>Максимальный уровень: §6§l5 §r§0<BR>Конфликтует с: §nСкорость§r, §0§nТочность§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Eldritch", "Улучшение револьвера: Древность");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Eldritch", "Я заткну твой рот этой пушкой!");
game.setLocalization("ru_RU", "tb.rec.revolver.eld.page.0", "Наполнение револьвера Древней магией определенно имеет эффект... Вы узнали, какой. Это улучшение сделает револьвер гораздо более эффективным против сильных существ, именуемых боссами, но уменьшит эффективность против остальных.<BR>Максимальный уровень: §6§l 2 §r§0<BR>Конфликтует с: §nСила§r, §0§nСеребрянные пули§r, §0§nБич Членистоногих§r, §0§nПогибель Древних§r, §0§nДуэль§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Heavy", "Улучшение револьвера: Тяжеловесность");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Heavy", "Не буду же я в него стрелять");
game.setLocalization("ru_RU", "tb.rec.revolver.hev.page.0", "Иногда у тауматурга заканчивается эссенция, которую использует револьвер... Но не все потеряно, револьвер сам по себе неплохое оружие! Конечно, надо его улучшить... Каждый уровень улучшения будет увеличивать урон револьвера в ближнем бою на 2<BR>Максимальный уровень: §6§l5 §r§0");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Knowledge", "Улучшение револьвера: Познание");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Knowledge", "И, контрольный выстрел в мозг.");
game.setLocalization("ru_RU", "tb.rec.revolver.kno.page.0", "Вы открыли способ привызывать пули к своему разуму. Результат любопытен - каждое убитое существо может дать вам внезапное прозрение, или просто Очки знаний. Никакого риска искажения.<BR>Максимальный уровень: §6§l 5 §r§0<BR>Конфликтует с: §nПервородный§r, §0§nЗаражение§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Piercing", "Улучшение револьвера: Пробой");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Piercing", "Desolator!");
game.setLocalization("ru_RU", "tb.rec.revolver.pir.page.0", "Вы открыли способ сделать ваш револьвер гораздо более разрушительным. Это улучшение позволит пулям пронзать насквозь любого, в кого они попадают, нанося больше урона, чем обычно, и продолжая лететь дальше.<BR>Максимальный уровень: §6§l1 §r§0");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Power", "Улучшение револьвера: Сила");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Power", "Больше пороха этой чертовой штуковине!");
game.setLocalization("ru_RU", "tb.rec.revolver.pow.page.0", "Вы открыли способ улучшить мощь вашего револьвера. Это улучшение увеличит урон, который револьвер наносит любому существу. Без исключений. Однако, увеличение урона меньше, чем в специализированных улучшениях.<BR>Максимальный уровень: §6§l 5 §r§0<BR>Конфликтует с: В§nДревность§r, §0В§nСеребрянные пули§r, §0В§nБич Членистоногих§r, §0В§nПогибель Древних§r, §0В§nДуэль§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Primal", "Улучшение револьвера: Первородный");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Primal", "Что лежит за гранью жизни...");
game.setLocalization("ru_RU", "tb.rec.revolver.primal.page.0", "Первичная энергия пульсирует вокруг... Что если наполнить ей револьвер? Результат...любопытный. Вааш преольвер кажется, стал скорее оружием прямого наведения, нежели огнестрельным - это значит, что пули долетают до цели В§oмгновенно§r§0. Пули также игнорируют любые препятствия на пути. Они также теперь гораздо опаснее. Однако, стоимость использования также гораздо выше - 2 эссенции за выстрел!<BR>Максимальный уровень: §6§l 1 §r§0<BR>Конфликтует с: В§nПознание§r, §0В§nЗаражение§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Silver", "Улучшение револьвера: Серебрянные Пули");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Silver", "Охотник на Оборотней.");
game.setLocalization("ru_RU", "tb.rec.revolver.sil.page.0", "Вы, насмотревшись, Ван Хельсинга, решили поохотиться на Нечисть. Это улучшение сделает револьвер гораздо более эффективным против неупокоенных, демонов и вервольфов, и не уменьшит эффетивность против остальных.<BR>Максимальный уровень: §6§l 5 §r§0<BR>Конфликтует с: В§nСила§r, §0В§nДревность§r, §0В§nБич Членистоногих§r, §0В§nПогибель Древних§r, §0В§nДуэль§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Speed", "Улучшение револьвера: Скорость");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Speed", "Самая быстрая рука на Диком Западе!");
game.setLocalization("ru_RU", "tb.rec.revolver.spe.page.0", "Вы открыли способ увеличить скорость, с которой летят пули. Каждый уровень этого улучшения увеличивает скорость пули на... N метров в секунду, откуда вам знать точно? В мире магии вообще нет такой величины! <BR>Максимальный уровень: §6§l5 §r§0<BR>Конфликтует с: В§nЭффективность§r, §0В§nТочность§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Tainted", "Улучшение револьвера: Заражение");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Tainted", "Тщательно мойте пули перед стрельбой.");
game.setLocalization("ru_RU", "tb.rec.revolver.tai.page.0", "Наполнение вашего оружия порчей, наверное, было не самой лучшей идеей, но вы все равно попробовали. Как бы то ни было, результаты не заставили себя ждать - это улучшение увеличивает чистый урон против любых существ, кроме зараженных - для них урон будет уменьшен! Пули также будут иметь шанс заразить жертву ядом порчи! <BR>Максимальный уровень: §6§l 3 §r§0<BR>Конфликтует с: В§nПервородный§r, §0В§nПознание§r");
game.setLocalization("ru_RU", "tc.research_name.TB.Revolver.Void", "Улучшение револьвера: Пустотный");
game.setLocalization("ru_RU", "tc.research_text.TB.Revolver.Void", "Цельнолитой Корпус");
game.setLocalization("ru_RU", "tb.rec.revolver.void.page.0", "Наполнение револьвера Пустотным металлом даровало ему важное свойство - самовосстановление. Револьвер вместе с этим принял странно-текучую форму, это вызывает помутнение расудка и галлюцинации...<BR>Максимальный уровень: §6§l 3 §r§0");
game.setLocalization("ru_RU", "tc.research_name.TB.Campfire", "Костёр Тауматурга");
game.setLocalization("ru_RU", "tc.research_text.TB.Campfire", "В поход с тауматургией!");
game.setLocalization("ru_RU", "tb.rec.campfire.page.0", "Часто, блуждая по округе, в поисках материалов для ваших исследований вы оставались наедине с мраком ночи и монстрами, пытающимися вас сожрать. Но вы же Тауматург, так что вы можете решить эту проблему! Вы открыли способ сделать походный огонь! Разместите костер на земле, затем положите поленьев, магические поленья горят дольше. А теперь – зажигайте! В качестве растопки идеально подойдет кусочек угля. От магического огня монстры вокруг испугаются и убегут, как криперы убегают от кошек! Однако, иногда голод будет заставлять монстров игнорировать походный огонь, так что он не на 100% безопасен.");
game.setLocalization("ru_RU", "tc.research_name.TB.Brazier", "Сигнальный Огонь Тауматурга");
game.setLocalization("ru_RU", "tc.research_text.TB.Brazier", "Зажечь Огни!");
game.setLocalization("ru_RU", "tb.rec.brazier.page.0", "Да, походный огонь удобен и хорош, но у него есть проблема - он требует слишком много ручного контроля. Вам нужно подкидывать дрова, топливо. Может, тауматургия может помочь с этим? Конечно может! Вы улучшили конструкцию походного огня. Сигнальный огонь горит ярче и не требует ручной подачи топлива - он вытягивает эссенцию Ignis из ближайших банок и зеркал.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Iron", "Таумические браслеты");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Iron", "Pandora в мире Магии");
game.setLocalization("ru_RU", "tb.rec.bracelet.iron.page.0", "С момента открытия жезлов вы думали об альтернативном способе пропускания вис через жезл. Жезл сам по себе имеет очень простую систему пропускания вис - он использует вис из стержня и испускает его в мир, исползуя наконечники. Да, это делает жезл универсальным устройством, способным использовать вис для атаки, защиты и создания. Но эффективность для атаки и создания невелика. конечно, есть посохи и скипетры. Скипетры хороши, но вам кажется, что посохи могли бы быть сделаны... по-другому.");
game.setLocalization("ru_RU", "tb.rec.bracelet.iron.page.1", "Полностью убирая стержень из конструкции, добавляя немного земных частей, чтобы удержать все вместе и делая "зону силы" с наконечниками, вы открыли Браслеты. Они ваша альтернатива посохам. Исходя из их конструкции, они не идут в тысячах вариантов - хотя несколько есть. Вы также уверены, что не сможете соединить разные наконечники для создания браслета - он будет нестабильным и не будет работать. Только обычные наконечники, открытые тауматургами могут быть использованы для создания браслетов... Браслет работает как и ваш обычный жезл - вытягивает вис из узлов, заряжается на пьедестале, собирает сферы аспектов с монстров. ");
game.setLocalization("ru_RU", "tb.rec.bracelet.iron.page.2", "Браслеты также работают с набалдашниками - для этого они и сделаны. Однако, в силу конструкции, они могут содержать очень малое количество вис - самый простой - железный, может содержать лишь 10! Также, они не могут быть использованы для создания. Однако в чем они блистают - так это использование набалдашников. Во-первых, они имеют потрясающую скидку по вису на использование набалдашников. Время перезарядки также сильно уменьшается. Тем же макаром возрастает сила и скорость использования. Из-за их малого размера они так же станут невидимыми, если носитель использует зелье невидимости.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Gold", "Золотой браслет");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Gold", "Превосходный проводник");
game.setLocalization("ru_RU", "tb.rec.bracelet.gold.page.0", "Для Тауматурга, вроде вас, железо - неприемлемый материал, земной, низкий. Вы же хотите блистать. Золотой браслет просто может хранить больше вис, чем железный, и дает большую скидку.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Greatwood", "Великодревесные Браслеты");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Greatwood", "Корень магии");
game.setLocalization("ru_RU", "tb.rec.bracelet.greatwood.page.0", "Так же, как и жезлы, браслеты могут быть сделаны из великого древа. Они просто держат больше вис, чем золотые, оставляя такую же скидку по вис.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Thaumium", "Таум-металлические браслеты");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Thaumium", "Приводят магию в мир");
game.setLocalization("ru_RU", "tb.rec.bracelet.thaumium.page.0", "Когда вы научились создавать стержни из таум-металла, вам тут же пришла в голову идея создать браслет. Он держит больше вис, чем тот, что из великого древа, а также имеет большую скидку Вис.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Silverwood", "Серебродревесный Браслет");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Silverwood", "Для тела и души");
game.setLocalization("ru_RU", "tb.rec.bracelet.silverwood.page.0", "Браслет из великого древа хорош, но далеко не идеален. Куда лучше выходит, если использовать Серебряное дерево. Полученный браслет приятного белого оттенка, а также бонусом идет хорошая скидка.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Void", "Пустотный браслет");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Void", "Пустотный тренд этого лета!");
game.setLocalization("ru_RU", "tb.rec.bracelet.void.page.0", "Вы не могли устоять перед соблазном создания браслета из Пустотного металла. Созданный вами браслет восстанавливает в себе аспекты, как и его прдшественник - пустотный жезл. Временами, когда вы смотрите на свое запястье, вы видите щупальца вместо пальцев и глаза на вашей ладони...");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Reed", "Тростниковый браслет");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Reed", "Легкий, как перышко");
game.setLocalization("ru_RU", "tb.rec.bracelet.reed.page.0", "Вы создали браслет, который имеет такой же функционал, как и стержень из тростника - он будет медленно восстанавливать вис Aer в себе. ");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Blaze", "Огненный браслет");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Blaze", "Инфернальное прикосновение ");
game.setLocalization("ru_RU", "tb.rec.bracelet.blaze.page.0", "Вы создали браслет, который имеет такой же функционал, как и огненный стержень - он будет медленно восстанавливать вис Ignis в себе.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Obsidian", "Обсидиановые браслеты");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Obsidian", "Из глубин мироздания");
game.setLocalization("ru_RU", "tb.rec.bracelet.obsidian.page.0", "Вы создали браслет, который имеет такой же функционал, как и стержень из Обсидиана - он будет медленно восстанавливать вис Terra в себе.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Ice", "Ледяные браслеты");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Ice", "Холодные!");
game.setLocalization("ru_RU", "tb.rec.bracelet.ice.page.0", "Вы создали браслет, который имеет такой же функционал, как и стержень изо льда - он будет медленно восстанавливать вис Aqua в себе.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Quartz", "Кварцевые браслеты");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Quartz", "Что вы и заказывали");
game.setLocalization("ru_RU", "tb.rec.bracelet.quartz.page.0", "Вы создали браслет, который имеет такой же функционал, как и стержень из кварца - он будет медленно восстанавливать вис Ordo в себе.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Bone", "Костяной браслет");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Bone", "Я снял его с трупа(и сделал тоже из него)!");
game.setLocalization("ru_RU", "tb.rec.bracelet.bone.page.0", "Вы создали браслет, который имеет такой же функционал, как и стержень из кости - он будет медленно восстанавливать вис Perditio в себе.");
game.setLocalization("ru_RU", "tc.research_name.TB.Bracelet.Primal", "Сингулярный браслет");
game.setLocalization("ru_RU", "tc.research_text.TB.Bracelet.Primal", "Сила Мироздания на запястье");
game.setLocalization("ru_RU", "tb.rec.bracelet.primal.page.0", "Вы постоянно задумывались над полезностью Сингулярного посоха, он давно уже бесполезен, поэтому вы сделали по его образу и подобию Браслет. Он будет медленно восстанавливать все аспекты в себе вплоть до 10%. Он также хранит больше всего вис из всех браслетов, и предоставляет самую лучшую скидку по вис. И, наконец, он дополнительно снижает время перезарядки и дарует дополнительный уровень Мощи каждому используемому набалдашнику.");
game.setLocalization("ru_RU", "tc.research_name.TB.CAP_gold", "Золотые Наконечники");
game.setLocalization("ru_RU", "tc.research_text.TB.CAP_gold", "Стильная Обивка");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_greatwood", "Стержень из Великого дерева");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_greatwood", "Хранилище магической энергии");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_silverwood", "Серебродревесный стержень");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_silverwood", "Магическое ядро");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_obsidian", "Обсидиановый стержень");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_obsidian", "Земляное хранилище вис");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_bone", "Костяной Стержень");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_bone", "Энтропийное хранилище Вис");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_blaze", "Огненный стержень");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_blaze", "Пламенное хранилище Вис");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_ice", "Ледяной стержень");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_ice", "Замороженное хранилище Вис");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_quartz", "Кварцевый стержень");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_quartz", "Порядковое хранилище Вис");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_reed", "Тростниковый стержень");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_reed", "Воздушное хранилище Вис");
game.setLocalization("ru_RU", "tc.research_name.TB.ROD_primal_staff", "Сингулярное ядро посоха");
game.setLocalization("ru_RU", "tc.research_text.TB.ROD_primal_staff", "Силы элементов в комбинации");
game.setLocalization("ru_RU", "tb.txt.linkStarted", "Акцептор Назначен");
game.setLocalization("ru_RU", "tb.txt.linkEstabilished", "Соединение установлено");
