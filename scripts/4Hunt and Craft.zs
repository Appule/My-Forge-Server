import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.util.random.Percentaged;

//// declaration
val nil = <item:minecraft:air>;
val copperCoin = <item:dotcoinmod:copper_coin>;
val ironCoin = <item:dotcoinmod:iron_coin>;
val goldCoin = <item:dotcoinmod:gold_coin>;
val platinumCoin = <item:dotcoinmod:platinum_coin>;

craftingTable.addShapeless("cnv_coppercoin8", copperCoin*8, [ironCoin]);
craftingTable.addShapeless("cnv_ironcoin8", ironCoin*8, [goldCoin]);
craftingTable.addShapeless("cnv_goldcoin8", goldCoin*8, [platinumCoin]);

craftingTable.addShapeless("cnv_ironcoin", ironCoin, [copperCoin,copperCoin,copperCoin,copperCoin,copperCoin,copperCoin,copperCoin,copperCoin]);
craftingTable.addShapeless("cnv_goldcoin", goldCoin, [ironCoin,ironCoin,ironCoin,ironCoin,ironCoin,ironCoin,ironCoin,ironCoin]);
craftingTable.addShapeless("cnv_platinumcoin", platinumCoin, [goldCoin,goldCoin,goldCoin,goldCoin,goldCoin,goldCoin,goldCoin,goldCoin]);

craftingTable.addShapeless("gunpowder_from_tacz_gp", <item:minecraft:gunpowder>, [<item:tacz_c:gunpowder_grains>]);
// 弾薬IDと報酬枚数のリスト
val ammoList = [
  ["ammo_tacz_68x51fury", "tacz:68x51fury", 4],
  ["ammo_bggp_105x372r", "bggp:105x372r", 1],
  ["ammo_tacz_308", "tacz:308", 4],
  ["ammo_oldgun_792x33", "oldgun:792x33", 4],
  ["ammo_bggp_blowdart", "bggp:blowdart", 4],
  ["ammo_oldgun_303", "oldgun:303", 4],
  ["ammo_tacz_45acp", "tacz:45acp", 6],
  ["ammo_tacz_50bmg", "tacz:50bmg", 2],
  ["ammo_tacz_40mm", "tacz:40mm", 1],
  ["ammo_oldgun_75x54", "oldgun:75x54", 4],
  ["ammo_tacz_12g", "tacz:12g", 4],
  ["ammo_oldgun_792x57", "oldgun:792x57", 4],
  ["ammo_tacz_rpg_rocket", "tacz:rpg_rocket", 1],
  ["ammo_tacz_58x42", "tacz:58x42", 4],
  ["ammo_tacz_762x39", "tacz:762x39", 4],
  ["ammo_tacz_762x54", "tacz:762x54", 4],
  ["ammo_oldgun_30x06", "oldgun:30x06", 4],
  ["ammo_tacz_9mm", "tacz:9mm", 8],
  ["ammo_tacz_338", "tacz:338", 4],
  ["ammo_tacz_357mag", "tacz:357mag", 6],
  ["ammo_tacz_46x30", "tacz:46x30", 4],
  ["ammo_tacz_30_06", "tacz:30_06", 4],
  ["ammo_tacz_50ae", "tacz:50ae", 4],
  ["ammo_bggp_120x570nato", "bggp:120x570nato", 1],
  ["ammo_oldgun_65x50", "oldgun:65x50", 4],
  ["ammo_tacz_762x25", "tacz:762x25", 4],
  ["ammo_tacz_556x45", "tacz:556x45", 4],
  ["ammo_bggp_40x365r", "bggp:40x365r", 1],
  ["ammo_hamster_medium_ammo", "hamster:medium_ammo", 6],
  ["ammo_hamster_long_ammo", "hamster:long_ammo", 4],
  ["ammo_hamster_compact_ammo", "hamster:compact_ammo", 8],
  ["ammo_300winmag", "ea:300winmag", 4],
  ["ammo_75fk", "ea:75fk", 4],
  ["ammo_rb10", "qkl:rb10", 4],
  ["ammo_4g", "ea:4g", 4],
  ["ammo_556x30", "ea:556x30", 4],
  ["ammo_303", "ww:303", 4],
  ["ammo_458socom", "ea:458socom", 4],
  ["ammo_357sig", "ea:357sig", 4],
  ["ammo_408cheytac", "ea:408cheytac", 4],
  ["ammo_792x33", "ea:792x33", 4],
  ["ammo_9x18", "ea:9x18", 6],
  ["ammo_300blk", "ea:300blk", 4],
  ["ammo_65a", "ww:65a", 4],
  ["ammo_77a", "ww:77a", 4],
  ["ammo_22hornet", "ea:22hornet", 4],
  ["ammo_57x28", "tacz:57x28", 4],
  ["ammo_22lr", "ea:22lr", 4],
  ["ammo_45_70", "tacz:45_70", 4],
  ["ammo_765", "ww:765", 4],
  ["ammo_20g", "ea:20g", 4],
  ["ammo_602x41", "ea:602x41", 4],
  ["ammo_17hmr", "ea:17hmr", 4],
  ["ammo_30c", "ww:30c", 4],
  ["ammo_410bore", "ea:410bore", 4],
  ["ammo_380auto", "ea:380auto", 4],
  ["ammo_44magnum", "ea:44magnum", 6],
  ["ammo_366tkm", "ea:366tkm", 4],
  ["ammo_545x39", "ea:545x39", 4],
  ["ammo_458hamr", "ea:458hamr", 4],
  ["ammo_68tvcm", "ea:68tvcm", 4],
  ["ammo_9x21", "ea:9x21", 6],
  ["ammo_223remington", "ea:223remington", 4],
  ["ammo_40sw", "ea:40sw", 4],
  ["ammo_32acp", "ea:32acp", 4],
  ["ammo_416barrett", "ea:416barrett", 4],
  ["ammo_763", "ww:763", 4],
  ["ammo_500sw", "ea:500sw", 4],
  ["ammo_16mm", "qkl:16mm", 4],
  ["ammo_127x55", "ea:127x55", 4],
  ["ammo_10mm", "ea:10mm", 8],
  ["ammo_8mm", "ww:8mm", 8],
  ["ammo_792x57", "ea:792x57", 4],
  ["ammo_50beowulf", "ea:50beowulf", 4],
  ["ammo_9x39", "ea:9x39", 4],
  ["ammo_44special", "ea:44special", 4],
  ["ammo_454casull", "ea:454casull", 4],
  ["ammo_65creedmoor", "ea:65creedmoor", 4],
];

// ループでレシピを追加
for ammo in ammoList {
  val id as string = ammo[0] as string;
  val ammoId as string = ammo[1] as string;
  val amount as int = ammo[2] as int;
  addAmmoRecipe(id, ammoId, amount);
}

<tag:items:huntandcraft:books>.add(<item:epicfight:skillbook>);
<tag:items:huntandcraft:books>.add(<item:minecraft:enchanted_book>);
var magicBook = <tag:items:huntandcraft:books>.asIIngredient();

addMultiCraftRecipe("dec_skillbook", <item:minecraft:book>, 1, magicBook, null);

val I = <item:minecraft:iron_ingot>;
val In = <item:minecraft:iron_nugget>;
val S = <item:immersiveengineering:ingot_steel>;
val C = <item:magistuarmory:steel_chainmail>;
val Sn = <item:immersiveengineering:nugget_steel>;
val L = <item:minecraft:leather>;
val X = <item:magistuarmory:woolen_fabric>;
val G = <item:minecraft:gold_ingot>;
val Gn = <item:minecraft:gold_nugget>;
val W = <item:minecraft:oak_planks>;
val St = <item:minecraft:cobblestone>;
val armoryMatArray = [
  [S*7,S%50],[S*12,S%50],[S*6,S%50],[S*2,S%50],
  [S*12,S%50],[S*20,S%50],[S*13,S%50],[S*7,S%50],
  [S*7,S%50],[S*12,S%50,Sn*2],[S*6,S%50,Sn*2],[S*3,S%50,Sn*2],
  [S*7,S%50],[S*12,S%50],[S*6,S%50],[S*3,S%50],
  [C*5],[C*8],[C*7],[L*2],
  [S*4,S%50,C*3],[S,S%50,C*6],[S,S%50,C*5],[S,S%50,L*2],
  [S*4,S%50],[S*7,S%50],
  [S*6,S%50,C],[S,S%50,C*6,X*7],[S*3,S%50,C*3],[L*4,C*2],
  [S*7,S%50,Gn*4],[S*12,S%50,Gn*4],[S*3,S%50,Gn*4],
  [X*5],[X*8],[X*7],[X*2,L*2],
  [S,S%50,L*6],[S*4,S%50,C*3],[S*4,S%50,C*3],
  [S*6,S%50,C*3],[S*4,S%50,C*3],[S*3,S%50,C*3],[S,S%50,L*2],
  [S*7,S%50],
  [S*4,S%50],[S*6,S%50],[L*2,X*5],[L*2],
  [S*9,S%50,C*3],[S*12,S%50],[S*6,S%50],[S*3,S%50],
  [S*4,S%50,C*3],[C*8],[C*2,L*2],
  [S*10,S%50],[C*4,C%50],

  [I*2,I%50],
  [I*2,I%50],
  [I*4,I%50],
  [L*4],
  [I*4],
  [I*4],
  [I*4],
  [L*4,I*2],
  [I*2,I*3%50,X*4],
  [I*4,I*2%50],
  [I*6,I%50],
  [I*4,I*2%50],
  [I*4,I*2%50],
  [I],

  [S*1],[S*2],[S*2],[S*1],[S*2],
  [S*4],[S*3],[S*3],[S*3],[S*3],
  [S*5],[S*5],[S*3],[S*4],[S*3],
  [S*4],[S*3],[S*3],[S*3],[S*3]
] as Percentaged<IItemStack>[][];
val armoryArray = [
  <item:magistuarmory:armet>, <item:magistuarmory:knight_chestplate>, <item:magistuarmory:knight_leggings>, <item:magistuarmory:knight_boots>,
  <item:magistuarmory:stechhelm>, <item:magistuarmory:jousting_chestplate>, <item:magistuarmory:jousting_leggings>, <item:magistuarmory:jousting_boots>,
  <item:magistuarmory:sallet>, <item:magistuarmory:gothic_chestplate>, <item:magistuarmory:gothic_leggings>, <item:magistuarmory:gothic_boots>,
  <item:magistuarmory:maximilian_helmet>, <item:magistuarmory:maximilian_chestplate>, <item:magistuarmory:maximilian_leggings>, <item:magistuarmory:maximilian_boots>,
  <item:magistuarmory:chainmail_helmet>, <item:magistuarmory:chainmail_chestplate>, <item:magistuarmory:chainmail_leggings>, <item:magistuarmory:chainmail_boots>,
  <item:magistuarmory:kettlehat>, <item:magistuarmory:platemail_chestplate>, <item:magistuarmory:platemail_leggings>, <item:magistuarmory:platemail_boots>,
  <item:magistuarmory:barbute>, <item:magistuarmory:halfarmor_chestplate>,
  <item:magistuarmory:greathelm>, <item:magistuarmory:crusader_chestplate>, <item:magistuarmory:crusader_leggings>, <item:magistuarmory:crusader_boots>,
  <item:magistuarmory:ceremonialarmet>, <item:magistuarmory:ceremonial_chestplate>, <item:magistuarmory:ceremonial_boots>,
  <item:magistuarmory:coif>, <item:magistuarmory:gambeson_chestplate>, <item:magistuarmory:pantyhose>, <item:magistuarmory:gambeson_boots>,
  <item:magistuarmory:brigandine_chestplate>, <item:magistuarmory:norman_helmet>, <item:magistuarmory:shishak>,
  <item:magistuarmory:bascinet>, <item:magistuarmory:xivcenturyknight_chestplate>, <item:magistuarmory:xivcenturyknight_leggings>, <item:magistuarmory:xivcenturyknight_boots>,
  <item:magistuarmory:wingedhussar_chestplate>,
  <item:magistuarmory:cuirassier_helmet>, <item:magistuarmory:cuirassier_chestplate>, <item:magistuarmory:cuirassier_leggings>, <item:magistuarmory:cuirassier_boots>,
  <item:magistuarmory:grand_bascinet>, <item:magistuarmory:kastenbrust_chestplate>, <item:magistuarmory:kastenbrust_leggings>, <item:magistuarmory:kastenbrust_boots>,
  <item:magistuarmory:face_helmet>, <item:magistuarmory:lamellar_chestplate>, <item:magistuarmory:lamellar_boots>,
  <item:magistuarmory:barding>, <item:magistuarmory:chainmail_horse_armor>,
    
  <item:magistuarmory:rusted_bastardsword>,
  <item:magistuarmory:rusted_heavymace>,
  <item:magistuarmory:rustedbarbute>,
  <item:magistuarmory:rustedchainmail_boots>,
  <item:magistuarmory:rustedchainmail_chestplate>,
  <item:magistuarmory:rustedchainmail_helmet>,
  <item:magistuarmory:rustedchainmail_leggings>,
  <item:magistuarmory:rustedcrusader_boots>,
  <item:magistuarmory:rustedcrusader_chestplate>,
  <item:magistuarmory:rustedgreathelm>,
  <item:magistuarmory:rustedhalfarmor_chestplate>,
  <item:magistuarmory:rustedkettlehat>,
  <item:magistuarmory:rustednorman_helmet>,
  <item:magistuarmory:corruptedroundshield>,

  <item:magistuarmory:steel_stylet>,<item:magistuarmory:steel_shortsword>,<item:magistuarmory:steel_katzbalger>,<item:magistuarmory:steel_pike>,<item:magistuarmory:steel_ranseur>,
  <item:magistuarmory:steel_ahlspiess>,<item:magistuarmory:steel_chivalrylance>,<item:magistuarmory:steel_bastardsword>,<item:magistuarmory:steel_estoc>,<item:magistuarmory:steel_claymore>,
  <item:magistuarmory:steel_zweihander>,<item:magistuarmory:steel_flamebladedsword>,<item:magistuarmory:steel_lochaberaxe>,<item:magistuarmory:steel_concavehalberd>,<item:magistuarmory:steel_heavymace>,
  <item:magistuarmory:steel_heavywarhammer>,<item:magistuarmory:steel_lucernhammer>,<item:magistuarmory:steel_morgenstern>,<item:magistuarmory:steel_chainmorgenstern>,<item:magistuarmory:steel_guisarme>
];


for i, armory in armoryArray{
  <recipetype:create:milling>.addRecipe("milling_armory"+i, armoryMatArray[i], armory.anyDamage(), 200);
  <recipetype:create:crushing>.addRecipe("crushing_armory"+i, armoryMatArray[i], armory.anyDamage(), 100);
  <recipetype:immersiveengineering:crusher>.addRecipe("ie_crushing_armory" + i, armory.anyDamage(), 800, nil, armoryMatArray[i]);
}

craftingTable.addShapeless("sulvagechainmesh", <item:immersiveengineering:nugget_steel>*4,
[<item:magistuarmory:steel_chainmail>]);


//// vanilla
val vanillaMatArray = [
  [L*4,L%50],[L*7,L%50],[L*6,L%50],[L*3,L%50],
  [I*4,I%50],[I*7,I%50],[I*6,I%50],[I*3,I%50],
  [I*2,I%50],[I*3,I%50],[I*3,I%50],[I,I%50],
  [G*4,G%50],[G*7,G%50],[G*6,G%50],[G*3,G%50],
  [W,W%50],[W%80],[W*2,W%50],[W*2,W%50],[W,W%50],
  [St,St%50],[St%80],[St*2,St%50],[St*2,St%50],[St,St%50],
  [I,I%50],[I%80],[I*2,I%50],[I*2,I%50],[I,I%50],
  [G,G%50],[G%80],[G*2,G%50],[G*2,G%50],[G,G%50],
  [I%80], [I%80]
] as Percentaged<IItemStack>[][];
val vanillaArmoryArray = [
  <item:minecraft:leather_helmet>, <item:minecraft:leather_chestplate>, <item:minecraft:leather_leggings>, <item:minecraft:leather_boots>,
  <item:minecraft:iron_helmet>, <item:minecraft:iron_chestplate>, <item:minecraft:iron_leggings>, <item:minecraft:iron_boots>,
  <item:minecraft:chainmail_helmet>, <item:minecraft:chainmail_chestplate>, <item:minecraft:chainmail_leggings>, <item:minecraft:chainmail_boots>,
  <item:minecraft:golden_helmet>, <item:minecraft:golden_chestplate>, <item:minecraft:golden_leggings>, <item:minecraft:golden_boots>, 
  <item:minecraft:wooden_sword>, <item:minecraft:wooden_shovel>, <item:minecraft:wooden_pickaxe>, <item:minecraft:wooden_axe>, <item:minecraft:wooden_hoe>,
  <item:minecraft:stone_sword>, <item:minecraft:stone_shovel>, <item:minecraft:stone_pickaxe>, <item:minecraft:stone_axe>, <item:minecraft:stone_hoe>,
  <item:minecraft:iron_sword>, <item:minecraft:iron_shovel>, <item:minecraft:iron_pickaxe>, <item:minecraft:iron_axe>, <item:minecraft:iron_hoe>,
  <item:minecraft:golden_sword>, <item:minecraft:golden_shovel>, <item:minecraft:golden_pickaxe>, <item:minecraft:golden_axe>, <item:minecraft:golden_hoe>,
  <item:minecraft:crossbow>, <item:minecraft:shield>
];

for i, armory in vanillaArmoryArray{
  <recipetype:create:milling>.addRecipe("milling_armory_v"+i, vanillaMatArray[i], armory.anyDamage(), 200);
  <recipetype:create:crushing>.addRecipe("crushing_armory_v"+i, vanillaMatArray[i], armory.anyDamage(), 100);
}

addSellRecipe(<item:minecraft:phantom_membrane>, "iron", 1, "sell_phantom_membrane");