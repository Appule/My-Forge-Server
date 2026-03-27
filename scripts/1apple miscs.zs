import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.loot.modifier.ILootModifier;
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.data.IData;
import stdlib.List;
import mods.create.MechanicalCrafterManager;
import crafttweaker.api.recipe.Brewing;

////declaration
val nil = <item:minecraft:air>;
//compressed blocks
val bone_meal_block = <item:minecraft:bone_block>;
<tag:items:applemisc:coal_block>.add(<tag:items:forge:storage_blocks/charcoal>);
<tag:items:applemisc:coal_block>.add(<item:minecraft:coal_block>);
val coal_block = <tag:items:applemisc:coal_block>.asIIngredient();
val iron_block = <tag:items:forge:storage_blocks/iron>.asIIngredient();
val steel_block = <tag:items:forge:storage_blocks/steel>.asIIngredient();
val gold_block = <tag:items:forge:storage_blocks/gold>.asIIngredient();
val redstone_block = <item:minecraft:redstone_block>;

//blocks-normal
<tag:items:applemisc:dirt>.add(<item:minecraft:dirt>);
<tag:items:applemisc:dirt>.add(<item:minecraft:coarse_dirt>);
val dirt = <tag:items:applemisc:dirt>.asIIngredient(); 
val stone = <tag:items:forge:stone>.asIIngredient();
val sand = <tag:items:forge:sand>.asIIngredient();
val red_sand = <item:minecraft:red_sand>;
val gravel = <item:minecraft:gravel>;
val wool = <tag:items:minecraft:wool>.asIIngredient();
val glass = <item:minecraft:glass>;
val glassPane = <item:minecraft:glass_pane>;
val stone_bricks = <item:minecraft:stone_bricks>;
val obsidian = <item:minecraft:obsidian>;
val netherrack = <item:minecraft:netherrack>;
val pumpkin = <item:minecraft:pumpkin>;
val leaves = <tag:items:minecraft:leaves>.asIIngredient();
val logs = <tag:items:minecraft:logs>.asIIngredient();
val planks = <tag:items:minecraft:planks>.asIIngredient();
val bookshelf = <item:minecraft:bookshelf>;
#block--functional
val crafting_table = <item:minecraft:crafting_table>;
val cobble_furnace = <item:minecraft:furnace>;
val chest = <tag:items:forge:chests>.asIIngredient();
val cake = <item:minecraft:cake>;
val repeater = <item:minecraft:repeater>;
val comparator = <item:minecraft:comparator>;
val dropper = <item:minecraft:dropper>;
val dispenser = <item:minecraft:dispenser>;
val observer = <item:minecraft:observer>;
val daylight_detector = <item:minecraft:daylight_detector>;
val piston = <item:minecraft:piston>;
val tnt = <item:minecraft:tnt>;
#blocks--otherdimension
val soul_sand = <item:minecraft:soul_sand>;
val magma_block = <item:minecraft:magma_block>;

//items-normal
val stick = <tag:items:forge:rods/wooden>.asIIngredient();
val saplings = <tag:items:minecraft:saplings>.asIIngredient();
val flint = <item:minecraft:flint>;
val clay_ball = <item:minecraft:clay_ball>;
<tag:items:applemisc:coal>.add(<item:minecraft:charcoal>);
<tag:items:applemisc:coal>.add(<item:minecraft:coal>);
val coal = <tag:items:applemisc:coal>.asIIngredient();
val gunpowder = <item:minecraft:gunpowder>;
val str = <tag:items:forge:string>.asIIngredient();
val bone = <item:minecraft:bone>;
val rotten_flesh = <item:minecraft:rotten_flesh>;
val phantom_skin = <item:minecraft:phantom_membrane>;
val brick = <item:minecraft:brick>;
val honeycomb = <item:minecraft:honeycomb>;
val arrow = <tag:items:minecraft:arrows>.asIIngredient();
val feather = <tag:items:forge:feathers>.asIIngredient();
val iron = <tag:items:forge:ingots/iron>.asIIngredient();
val iron_nugget = <tag:items:forge:nuggets/iron>.asIIngredient();
val gold = <tag:items:forge:ingots/gold>.asIIngredient();
val gold_nugget = <tag:items:forge:nuggets/gold>.asIIngredient();
val diamond = <item:minecraft:diamond>;
val emerald = <item:minecraft:emerald>;
val lapis = <item:minecraft:lapis_lazuli>;
val quartz = <item:minecraft:quartz>;
val witherskull = <item:minecraft:wither_skeleton_skull>;
val paper = <item:minecraft:paper>;
val leather = <item:minecraft:leather>;
val nether_star = <item:minecraft:nether_star>;
#items--functional
val torch = <item:minecraft:torch>;
val redstone_torch = <item:minecraft:redstone_torch>;
val redstone = <item:minecraft:redstone>;
val bone_meal = <item:minecraft:bone_meal>;
val bottle = <item:minecraft:glass_bottle>;
val bucket = <item:minecraft:bucket>;
val bow = <item:minecraft:bow>;
val ender_pearl = <item:minecraft:ender_pearl>;
val ender_eye = <item:minecraft:ender_eye>;
val exp_bottle = <item:minecraft:experience_bottle>;
val egg = <tag:items:forge:eggs>.asIIngredient();
val snowball = <item:minecraft:snowball>;

#items--otherdimension
val soul_torch = <item:minecraft:soul_torch>;
val blaze_rod = <item:minecraft:blaze_rod>;
val blaze_powder = <item:minecraft:blaze_powder>;
val fire_charge = <item:minecraft:fire_charge>;
val nether_wart = <item:minecraft:nether_wart>;

#items--color
val white = <tag:items:forge:dyes/white>.asIIngredient();
val orange = <tag:items:forge:dyes/orange>.asIIngredient();
val magenta = <tag:items:forge:dyes/magenta>.asIIngredient();
val light_blue = <tag:items:forge:dyes/light_blue>.asIIngredient();
val yellow = <tag:items:forge:dyes/yellow>.asIIngredient();
val lime = <tag:items:forge:dyes/lime>.asIIngredient();
val pink = <tag:items:forge:dyes/pink>.asIIngredient();
val gray = <tag:items:forge:dyes/gray>.asIIngredient();
val light_gray = <tag:items:forge:dyes/light_gray>.asIIngredient();
val cyan = <tag:items:forge:dyes/cyan>.asIIngredient();
val purple = <tag:items:forge:dyes/purple>.asIIngredient();
val blue = <tag:items:forge:dyes/blue>.asIIngredient();
val brown = <tag:items:forge:dyes/brown>.asIIngredient();
val green = <tag:items:forge:dyes/green>.asIIngredient();
val red = <tag:items:forge:dyes/red>.asIIngredient();
val black = <tag:items:forge:dyes/black>.asIIngredient();

//// item status
{
  <item:minecraft:egg>.maxStackSize = 64;
  <item:minecraft:snowball>.maxStackSize = 64;
  <item:minecraft:ender_pearl>.maxStackSize = 64;
  <item:scalinghealth:bandages>.maxStackSize = 64;
  <item:scalinghealth:medkit>.maxStackSize = 64;
}

//// item equal exchange
<tag:items:applemisc:wither_bones>.add(<item:bhc:wither_bone>);
<tag:items:applemisc:wither_bones>.add(<item:tconstruct:necrotic_bone>);
<tag:items:applemisc:wither_bones>.add(<item:butchery:wither_bone>);
val wither_bones = <tag:items:applemisc:wither_bones>.asIIngredient();


//// recipes
// vanilla
{
  #stick and bamboo torch
  campfire.addRecipe("torch_s", torch, stick, 1.0, 20);
  campfire.addRecipe("torch_b", torch * 2, <item:minecraft:bamboo>, 2.0, 20);

  #repair anvil
  craftingTable.addShapeless("repairanvil0",<item:minecraft:anvil>,
  [<item:minecraft:chipped_anvil>, iron]);
  craftingTable.addShapeless("repairanvil1",<item:minecraft:chipped_anvil>,
  [<item:minecraft:damaged_anvil>, iron]);

  #easy campfire
  craftingTable.removeByName("minecraft:campfire");
  craftingTable.addShaped("campfire", <item:minecraft:campfire>, 
  [[stick,stick,stick],
  [stick,logs,stick],
  [stick,stick,stick]]);

  #book
  // 本をクラフトすると紙3枚ができる
  craftingTable.addShapeless("book_to_paper", <item:minecraft:paper>*3, [<item:minecraft:book>.transformReplace(leather)]);

  #ancient debris from nether thing
  craftingTable.addShapeless("ancient_debris", <item:minecraft:ancient_debris>, 
  [<item:minecraft:nether_bricks>, soul_sand, soul_sand, soul_sand, soul_sand, soul_sand, soul_sand, soul_sand, soul_sand]);

  craftingTable.addShaped("wither_skull", witherskull,
  [[wither_bones,wither_bones,wither_bones],
  [wither_bones,nil,wither_bones]]);

  // レッドストーンブロックで醸造すると持続時間10倍のポーションになる
  val speedPotion = <item:minecraft:potion>.withTag({Potion: "minecraft:swiftness"});
  val longSpeedPotion = <item:minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"});

  // 通常延長の10倍にしたい場合は、カスタムタグで Duration を指定
  val superLongSpeedPotion = longSpeedPotion.withTag({CustomPotionEffects: [{Id: 1, Amplifier: 0, Duration: 48000}]}); 

  // レシピ追加
  brewing.addRecipe(speedPotion, <item:minecraft:redstone_block>, superLongSpeedPotion);
}

//// farming for blockheads
{
  craftingTable.remove(<item:farmingforblockheads:market>);
  craftingTable.addShaped("easy_ffb",<item:farmingforblockheads:market>,
  [[planks],
  [logs]]);
}


//// create misc
<recipetype:create:milling>.addRecipe("milling_tnt", [gunpowder*5, <item:minecraft:sand>*4], tnt, 200);
<recipetype:create:crushing>.addRecipe("crushing_tnt", [gunpowder*5, <item:minecraft:sand>*4], tnt, 100);


//// create big cannons
// compat
val bronze_nugget = <tag:items:forge:nuggets/bronze>.asIIngredient();
val bronze = <tag:items:forge:ingots/bronze>.asIIngredient();
val emp_cart = <item:createbigcannons:empty_autocannon_cartridge>;
val wooden_slabs = <tag:items:minecraft:wooden_slabs>.asIIngredient();
val cast_iron = <tag:items:forge:ingots/cast_iron>.asIIngredient();
val steel = <tag:items:forge:ingots/steel>.asIIngredient();
val nethersteel = <item:createbigcannons:nethersteel_ingot>;
val molten_cast_iron = <fluid:createbigcannons:molten_cast_iron>;
val molten_bronze = <fluid:createbigcannons:molten_bronze>;
val molten_steel = <tag:fluids:applemisc:molten_steel>;
molten_steel.add(<fluid:createbigcannons:molten_steel>);
molten_steel.add(<fluid:tconstruct:molten_steel>);
val molten_nethersteel = <fluid:createbigcannons:molten_nethersteel>;

{

  // cartridge
  craftingTable.addShapeless("fill_cartridge", <item:createbigcannons:filled_autocannon_cartridge> * 8, [<item:minecraft:gunpowder>, emp_cart, emp_cart, emp_cart, emp_cart, emp_cart, emp_cart, emp_cart, emp_cart]);

  craftingTable.addShapeless("packed_gunpowder", <item:createbigcannons:packed_gunpowder>, [<item:minecraft:gunpowder>, <item:minecraft:gunpowder>, <item:minecraft:gunpowder>]);

  craftingTable.remove(<item:createbigcannons:casting_sand>);
  craftingTable.addShapeless("casting_sand", <item:createbigcannons:casting_sand> * 18,
  [dirt, clay_ball, sand, sand]);

  craftingTable.remove(<item:createbigcannons:impact_fuze>);
  craftingTable.addShaped("impact_fuze", <item:createbigcannons:impact_fuze> * 16,
  [[<tag:items:createbigcannons:impact_fuze_head>.asIIngredient()], [redstone]]);

  craftingTable.remove(<item:createbigcannons:cannon_welder>);
  craftingTable.addShaped("cannon_welder", <item:createbigcannons:cannon_welder>,
  [[<item:minecraft:flint_and_steel>], [blaze_rod]]);

  craftingTable.addShaped("block_armor_inspection_tool", <item:createbigcannons:block_armor_inspection_tool>,
  [[<item:minecraft:compass>], [<item:create:shaft>]]);

  craftingTable.addShapeless("creative_autocannon_ammo_container", <item:createbigcannons:creative_autocannon_ammo_container>,
  [<item:createbigcannons:autocannon_ammo_container>, <item:dotcoinmod:platinum_coin>]);

  craftingTable.addShapeless("creative_heavy_autocannon_ammo_box", <item:cbc_at:creative_heavy_autocannon_ammo_box>,
  [<item:cbc_at:heavy_autocannon_ammo_box>, <item:dotcoinmod:platinum_coin>]);

  craftingTable.addShapeless("disassemble_cartridge", <item:minecraft:iron_nugget>,
  [<item:createbigcannons:empty_autocannon_cartridge>]);


  // fuze
  craftingTable.remove(<item:createbigcannons:timed_fuze>);
  craftingTable.addShaped("timed_fuze", <item:createbigcannons:timed_fuze> * 64,
  [[<item:minecraft:clock>.reuse()], [redstone]]);
  craftingTable.addShaped("set_0_timed_fuze", <item:createbigcannons:timed_fuze>,
  [[<item:createbigcannons:timed_fuze>, nil], [nil, nil]]);
  craftingTable.addShaped("set_5_timed_fuze", <item:createbigcannons:timed_fuze>.withTag({FuzeTimer: 5 as int}),
  [[nil, <item:createbigcannons:timed_fuze>], [nil, nil]]);
  craftingTable.addShaped("set_10_timed_fuze", <item:createbigcannons:timed_fuze>.withTag({FuzeTimer: 10 as int}),
  [[nil, nil], [<item:createbigcannons:timed_fuze>, nil]]);
  craftingTable.addShaped("set_15_timed_fuze", <item:createbigcannons:timed_fuze>.withTag({FuzeTimer: 15 as int}),
  [[nil, nil], [nil, <item:createbigcannons:timed_fuze>]]);

  craftingTable.remove(<item:createbigcannons:proximity_fuze>);
  craftingTable.addShaped("proximity_fuze", <item:createbigcannons:proximity_fuze> * 16,
  [[quartz], [redstone]]);

  craftingTable.addShaped("another_solid_shot", <item:createbigcannons:solid_shot> * 8,
  [[iron_block],
  [wooden_slabs]]);

  craftingTable.addShaped("another_he_shell", <item:createbigcannons:he_shell> * 8,
  [[iron],
  [<item:minecraft:tnt>],
  [wooden_slabs]]);

  craftingTable.addShaped("another_shrapnel_shell", <item:createbigcannons:shrapnel_shell> * 8,
  [[<item:createbigcannons:shot_balls>, <item:createbigcannons:shot_balls>, <item:createbigcannons:shot_balls>],
  [nil, tnt, nil],
  [nil, wooden_slabs, nil]]);

  craftingTable.addShaped("another_ap_shot", <item:createbigcannons:ap_shot> * 8,
  [[iron],
  [iron_block],
  [wooden_slabs]]);

  craftingTable.addShaped("another_ap_shell", <item:createbigcannons:ap_shell>.withTag({BlockEntityTag: {Fuze: {id: "createbigcannons:delayed_impact_fuze" as string, Count: 1 as byte, tag: {FuzeTimer: 5 as int}}, id: "createbigcannons:fuzed_block" as string}}) * 8,
  [[iron],
  [tnt],
  [wooden_slabs]]);

  craftingTable.addShaped("another_fluid_shell", <item:createbigcannons:fluid_shell> * 8,
  [[<item:create:fluid_pipe>],
  [iron_block],
  [wooden_slabs]]);

  craftingTable.addShaped("another_bag_of_grapeshot", <item:createbigcannons:bag_of_grapeshot> * 8,
  [[<item:createbigcannons:shot_balls>],
  [gunpowder],
  [wooden_slabs]]);

  craftingTable.addShaped("another_mortar_stone", <item:createbigcannons:mortar_stone> * 8,
  [[stone],
  [wooden_slabs]]);

  craftingTable.addShaped("smoke_shell", <item:createbigcannons:smoke_shell> * 16,
  [[<item:minecraft:hay_block>],
  [wooden_slabs]]);

  craftingTable.addShaped("drop_mortar_shell", <item:createbigcannons:drop_mortar_shell> * 16,
  [[tnt],
  [<item:create:shaft>],
  [<item:createbigcannons:powder_charge>]]);

  craftingTable.remove(<item:createbigcannons:flak_autocannon_round>);
  craftingTable.addShaped("another_flak_autocannon_round", <item:createbigcannons:flak_autocannon_round> * 64,
  [[<item:createbigcannons:shot_balls>],
  [gunpowder],
  [iron]]);

  craftingTable.remove(<item:createbigcannons:ap_autocannon_round>);
  craftingTable.addShaped("another_ap_autocannon_round", <item:createbigcannons:ap_autocannon_round> * 16,
  [[iron_nugget],
  [iron],
  [iron]]);

  craftingTable.remove(<item:createbigcannons:powder_charge>);
  craftingTable.addShapeless("powder_charge", <item:createbigcannons:powder_charge> * 16,
  [<item:createbigcannons:packed_gunpowder>, <item:createbigcannons:empty_powder_charge>]);

  craftingTable.remove(<item:createbigcannons:yaw_controller>);
  craftingTable.addShaped("yaw_controller", <item:createbigcannons:yaw_controller>,
  [[<item:create:shaft>],
  [<item:create:andesite_casing>],
  [gunpowder]]);

  craftingTable.remove(<item:createbigcannons:cannon_mount>);
  craftingTable.addShaped("cannon_mount", <item:createbigcannons:cannon_mount>,
  [[<item:create:shaft>, <item:create:andesite_casing>, <item:create:shaft>],
  [nil, gunpowder, nil]]);

  craftingTable.remove(<item:createbigcannons:shot_balls>);
  craftingTable.addShaped("shot_balls", <item:createbigcannons:shot_balls> * 24,
  [[iron_nugget, iron_nugget, iron_nugget],
  [iron_nugget, iron, iron_nugget],
  [iron_nugget, iron_nugget, iron_nugget]]);

  craftingTable.remove(<item:createbigcannons:empty_powder_charge>);
  craftingTable.addShaped("empty_powder_charge", <item:createbigcannons:empty_powder_charge> * 16,
  [[str],
  [wool],
  [str]]);

  val nitro = <item:createbigcannons:nitropowder>;
  craftingTable.addShapeless("cartridge_power5f0", <item:createbigcannons:big_cartridge>.withTag({Power: 5}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 0}), nitro, nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power5f1", <item:createbigcannons:big_cartridge>.withTag({Power: 5}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 1}), nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power5f2", <item:createbigcannons:big_cartridge>.withTag({Power: 5}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 2}), nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power5f3", <item:createbigcannons:big_cartridge>.withTag({Power: 5}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 3}), nitro, nitro]);
  craftingTable.addShapeless("cartridge_power5f4", <item:createbigcannons:big_cartridge>.withTag({Power: 5}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 4}), nitro]);

  craftingTable.addShapeless("cartridge_power6f0", <item:createbigcannons:big_cartridge>.withTag({Power: 6}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 0}), nitro, nitro, nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power6f1", <item:createbigcannons:big_cartridge>.withTag({Power: 6}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 1}), nitro, nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power6f2", <item:createbigcannons:big_cartridge>.withTag({Power: 6}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 2}), nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power6f3", <item:createbigcannons:big_cartridge>.withTag({Power: 6}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 3}), nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power6f4", <item:createbigcannons:big_cartridge>.withTag({Power: 6}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 4}), nitro, nitro]);
  craftingTable.addShapeless("cartridge_power6f5", <item:createbigcannons:big_cartridge>.withTag({Power: 6}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 5}), nitro]);

  craftingTable.addShapeless("cartridge_power7f0", <item:createbigcannons:big_cartridge>.withTag({Power: 7}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 0}), nitro]);
  craftingTable.addShapeless("cartridge_power7f1", <item:createbigcannons:big_cartridge>.withTag({Power: 7}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 1}), nitro]);
  craftingTable.addShapeless("cartridge_power7f2", <item:createbigcannons:big_cartridge>.withTag({Power: 7}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 2}), nitro]);
  craftingTable.addShapeless("cartridge_power7f3", <item:createbigcannons:big_cartridge>.withTag({Power: 7}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 3}), nitro]);
  craftingTable.addShapeless("cartridge_power7f4", <item:createbigcannons:big_cartridge>.withTag({Power: 7}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 4}), nitro]);
  craftingTable.addShapeless("cartridge_power7f5", <item:createbigcannons:big_cartridge>.withTag({Power: 7}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 5}), nitro]);
  craftingTable.addShapeless("cartridge_power7f6", <item:createbigcannons:big_cartridge>.withTag({Power: 7}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 6}), nitro]);

  craftingTable.addShapeless("cartridge_power8f0", <item:createbigcannons:big_cartridge>.withTag({Power: 8}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 0}), nitro, nitro, nitro, nitro, nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power8f1", <item:createbigcannons:big_cartridge>.withTag({Power: 8}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 1}), nitro, nitro, nitro, nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power8f2", <item:createbigcannons:big_cartridge>.withTag({Power: 8}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 2}), nitro, nitro, nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power8f3", <item:createbigcannons:big_cartridge>.withTag({Power: 8}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 3}), nitro, nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power8f4", <item:createbigcannons:big_cartridge>.withTag({Power: 8}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 4}), nitro, nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power8f5", <item:createbigcannons:big_cartridge>.withTag({Power: 8}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 5}), nitro, nitro, nitro]);
  craftingTable.addShapeless("cartridge_power8f6", <item:createbigcannons:big_cartridge>.withTag({Power: 8}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 6}), nitro, nitro]);
  craftingTable.addShapeless("cartridge_power8f7", <item:createbigcannons:big_cartridge>.withTag({Power: 8}),
  [<item:createbigcannons:big_cartridge>.withTag({Power: 7}), nitro]);

  stoneCutter.addRecipe("cutting_cast_iron_sliding_breech", <item:createbigcannons:cast_iron_sliding_breech>, cast_iron);
  stoneCutter.addRecipe("cutting_cast_iron_cannon_end", <item:createbigcannons:cast_iron_cannon_end>, cast_iron);
  stoneCutter.addRecipe("cutting_cast_iron_cannon_chamber", <item:createbigcannons:cast_iron_cannon_chamber>, cast_iron);
  stoneCutter.addRecipe("cutting_cast_iron_cannon_barrel", <item:createbigcannons:cast_iron_cannon_barrel>, cast_iron);

  stoneCutter.addRecipe("cutting_bronze_sliding_breech", <item:createbigcannons:bronze_sliding_breech>, bronze);
  stoneCutter.addRecipe("cutting_bronze_cannon_end", <item:createbigcannons:bronze_cannon_end>, bronze);
  stoneCutter.addRecipe("cutting_bronze_cannon_chamber", <item:createbigcannons:bronze_cannon_chamber>, bronze);
  stoneCutter.addRecipe("cutting_bronze_cannon_barrel", <item:createbigcannons:bronze_cannon_barrel>, bronze);

  stoneCutter.addRecipe("cutting_steel_screw_breech", <item:createbigcannons:steel_screw_breech>, steel);
  stoneCutter.addRecipe("cutting_steel_sliding_breech", <item:createbigcannons:steel_sliding_breech>, steel);
  stoneCutter.addRecipe("cutting_thick_steel_cannon_chamber", <item:createbigcannons:thick_steel_cannon_chamber>, steel);
  stoneCutter.addRecipe("cutting_built_up_steel_cannon_chamber", <item:createbigcannons:built_up_steel_cannon_chamber>, steel);
  stoneCutter.addRecipe("cutting_steel_cannon_chamber", <item:createbigcannons:steel_cannon_chamber>, steel);
  stoneCutter.addRecipe("cutting_built_up_steel_cannon_barrel", <item:createbigcannons:built_up_steel_cannon_barrel>, steel);
  stoneCutter.addRecipe("cutting_steel_cannon_barrel", <item:createbigcannons:steel_cannon_barrel>, steel);

  stoneCutter.addRecipe("cutting_nethersteel_screw_breech", <item:createbigcannons:nethersteel_screw_breech>, nethersteel);
  stoneCutter.addRecipe("cutting_thick_nethersteel_cannon_chamber", <item:createbigcannons:thick_nethersteel_cannon_chamber>, nethersteel);
  stoneCutter.addRecipe("cutting_built_up_nethersteel_cannon_chamber", <item:createbigcannons:built_up_nethersteel_cannon_chamber>, nethersteel);
  stoneCutter.addRecipe("cutting_nethersteel_cannon_chamber", <item:createbigcannons:nethersteel_cannon_chamber>, nethersteel);
  stoneCutter.addRecipe("cutting_built_up_nethersteel_cannon_barrel", <item:createbigcannons:built_up_nethersteel_cannon_barrel>, nethersteel);
  stoneCutter.addRecipe("cutting_nethersteel_cannon_barrel", <item:createbigcannons:nethersteel_cannon_barrel>, nethersteel);


  <recipetype:create:compacting>.addRecipe("cast_cast_iron_cannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:cast_iron_cannon_barrel>], [], [molten_cast_iron * 18], 200);
  <recipetype:create:compacting>.addRecipe("cast_cast_iron_cannon_chamber", <constant:create:heat_condition:none>, [<item:createbigcannons:cast_iron_cannon_chamber>], [], [molten_cast_iron * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_cast_iron_cannon_end", <constant:create:heat_condition:none>, [<item:createbigcannons:cast_iron_cannon_end>], [], [molten_cast_iron * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_cast_iron_sliding_breech", <constant:create:heat_condition:none>, [<item:createbigcannons:cast_iron_sliding_breech>], [], [molten_cast_iron * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_cast_iron_autocannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:cast_iron_autocannon_barrel>], [], [molten_cast_iron * 9], 200);
  <recipetype:create:compacting>.addRecipe("cast_cast_iron_autocannon_recoil_spring", <constant:create:heat_condition:none>, [<item:createbigcannons:cast_iron_autocannon_recoil_spring>], [], [molten_cast_iron * 18], 200);
  <recipetype:create:compacting>.addRecipe("cast_cast_iron_autocannon_breech", <constant:create:heat_condition:none>, [<item:createbigcannons:cast_iron_autocannon_breech>], [], [molten_cast_iron * 18], 200);

  <recipetype:create:compacting>.addRecipe("cast_bronze_cannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:bronze_cannon_barrel>], [], [molten_bronze * 18], 200);
  <recipetype:create:compacting>.addRecipe("cast_bronze_cannon_chamber", <constant:create:heat_condition:none>, [<item:createbigcannons:bronze_cannon_chamber>], [], [molten_bronze * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_bronze_cannon_end", <constant:create:heat_condition:none>, [<item:createbigcannons:bronze_cannon_end>], [], [molten_bronze * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_bronze_sliding_breech", <constant:create:heat_condition:none>, [<item:createbigcannons:bronze_sliding_breech>], [], [molten_bronze * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_bronze_autocannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:bronze_autocannon_barrel>], [], [molten_bronze * 9], 200);
  <recipetype:create:compacting>.addRecipe("cast_bronze_autocannon_recoil_spring", <constant:create:heat_condition:none>, [<item:createbigcannons:bronze_autocannon_recoil_spring>], [], [molten_bronze * 18], 200);
  <recipetype:create:compacting>.addRecipe("cast_bronze_autocannon_breech", <constant:create:heat_condition:none>, [<item:createbigcannons:bronze_autocannon_breech>], [], [molten_bronze * 18], 200);

  <recipetype:create:compacting>.addRecipe("cast_steel_cannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:steel_cannon_barrel>], [], [molten_steel * 18], 200);
  <recipetype:create:compacting>.addRecipe("cast_built_up_steel_cannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:built_up_steel_cannon_barrel>], [], [molten_steel * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_steel_cannon_chamber", <constant:create:heat_condition:none>, [<item:createbigcannons:steel_cannon_chamber>], [], [molten_steel * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_built_up_steel_cannon_chamber", <constant:create:heat_condition:none>, [<item:createbigcannons:built_up_steel_cannon_chamber>], [], [molten_steel * 36], 200);
  <recipetype:create:compacting>.addRecipe("cast_thick_steel_cannon_chamber", <constant:create:heat_condition:none>, [<item:createbigcannons:thick_steel_cannon_chamber>], [], [molten_steel * 36], 200);
  <recipetype:create:compacting>.addRecipe("cast_steel_sliding_breech", <constant:create:heat_condition:none>, [<item:createbigcannons:steel_sliding_breech>], [], [molten_steel * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_steel_screw_breech", <constant:create:heat_condition:none>, [<item:createbigcannons:steel_screw_breech>], [], [molten_steel * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_steel_autocannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:steel_autocannon_barrel>], [], [molten_steel * 9], 200);
  <recipetype:create:compacting>.addRecipe("cast_steel_autocannon_recoil_spring", <constant:create:heat_condition:none>, [<item:createbigcannons:steel_autocannon_recoil_spring>], [], [molten_steel * 18], 200);
  <recipetype:create:compacting>.addRecipe("cast_steel_autocannon_breech", <constant:create:heat_condition:none>, [<item:createbigcannons:steel_autocannon_breech>], [], [molten_steel * 18], 200);

  <recipetype:create:compacting>.addRecipe("cast_nethersteel_cannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:nethersteel_cannon_barrel>], [], [molten_nethersteel * 18], 200);
  <recipetype:create:compacting>.addRecipe("cast_built_up_nethersteel_cannon_barrel", <constant:create:heat_condition:none>, [<item:createbigcannons:built_up_nethersteel_cannon_barrel>], [], [molten_nethersteel * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_nethersteel_cannon_chamber", <constant:create:heat_condition:none>, [<item:createbigcannons:nethersteel_cannon_chamber>], [], [molten_nethersteel * 27], 200);
  <recipetype:create:compacting>.addRecipe("cast_built_up_nethersteel_cannon_chamber", <constant:create:heat_condition:none>, [<item:createbigcannons:built_up_nethersteel_cannon_chamber>], [], [molten_nethersteel * 36], 200);
  <recipetype:create:compacting>.addRecipe("cast_thick_nethersteel_cannon_chamber", <constant:create:heat_condition:none>, [<item:createbigcannons:thick_nethersteel_cannon_chamber>], [], [molten_nethersteel * 36], 200);
  <recipetype:create:compacting>.addRecipe("cast_nethersteel_screw_breech", <constant:create:heat_condition:none>, [<item:createbigcannons:nethersteel_screw_breech>], [], [molten_nethersteel * 27], 200);

  stoneCutter.addRecipe("cutting_steel_autocannon_breech", <item:createbigcannons:steel_autocannon_breech>, steel);
  stoneCutter.addRecipe("cutting_steel_autocannon_recoil_spring", <item:createbigcannons:steel_autocannon_recoil_spring>, steel);
  stoneCutter.addRecipe("cutting_steel_autocannon_barrel", <item:createbigcannons:steel_autocannon_barrel>, steel);

  stoneCutter.addRecipe("cutting_cast_iron_autocannon_breech", <item:createbigcannons:cast_iron_autocannon_breech>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_autocannon_recoil_spring", <item:createbigcannons:cast_iron_autocannon_recoil_spring>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_autocannon_barrel", <item:createbigcannons:cast_iron_autocannon_barrel>, iron);

  stoneCutter.addRecipe("cutting_bronze_autocannon_breech", <item:createbigcannons:bronze_autocannon_breech>, bronze);
  stoneCutter.addRecipe("cutting_bronze_autocannon_recoil_spring", <item:createbigcannons:bronze_autocannon_recoil_spring>, bronze);
  stoneCutter.addRecipe("cutting_bronze_autocannon_barrel", <item:createbigcannons:bronze_autocannon_barrel>, bronze);
}

{
  
  stoneCutter.addRecipe("cutting_cast_iron_twin_autocannon_barrel", <item:cbc_at:cast_iron_twin_autocannon_barrel>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_twin_autocannon_recoil_spring", <item:cbc_at:cast_iron_twin_autocannon_recoil_spring>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_twin_autocannon_breech", <item:cbc_at:cast_iron_twin_autocannon_breech>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_twin_autocannon_silencer", <item:cbc_at:cast_iron_twin_autocannon_silencer>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_twin_autocannon_muzzle_brake", <item:cbc_at:cast_iron_twin_autocannon_muzzle_brake>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_vert_twin_autocannon_barrel", <item:cbc_at:cast_iron_vert_twin_autocannon_barrel>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_vert_twin_autocannon_recoil_spring", <item:cbc_at:cast_iron_vert_twin_autocannon_recoil_spring>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_vert_twin_autocannon_breech", <item:cbc_at:cast_iron_vert_twin_autocannon_breech>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_vert_twin_autocannon_muzzle_brake", <item:cbc_at:cast_iron_vert_twin_autocannon_muzzle_brake>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_vert_twin_autocannon_silencer", <item:cbc_at:cast_iron_vert_twin_autocannon_silencer>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_autocannon_silencer", <item:cbc_at:cast_iron_autocannon_silencer>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_autocannon_muzzle_brake", <item:cbc_at:cast_iron_autocannon_muzzle_brake>, iron);
  stoneCutter.addRecipe("cutting_bronze_twin_autocannon_barrel", <item:cbc_at:bronze_twin_autocannon_barrel>, bronze);
  stoneCutter.addRecipe("cutting_bronze_twin_autocannon_recoil_spring", <item:cbc_at:bronze_twin_autocannon_recoil_spring>, bronze);
  stoneCutter.addRecipe("cutting_bronze_twin_autocannon_breech", <item:cbc_at:bronze_twin_autocannon_breech>, bronze);
  stoneCutter.addRecipe("cutting_bronze_twin_autocannon_silencer", <item:cbc_at:bronze_twin_autocannon_silencer>, bronze);
  stoneCutter.addRecipe("cutting_bronze_twin_autocannon_muzzle_brake", <item:cbc_at:bronze_twin_autocannon_muzzle_brake>, bronze);
  stoneCutter.addRecipe("cutting_bronze_vert_twin_autocannon_barrel", <item:cbc_at:bronze_vert_twin_autocannon_barrel>, bronze);
  stoneCutter.addRecipe("cutting_bronze_vert_twin_autocannon_recoil_spring", <item:cbc_at:bronze_vert_twin_autocannon_recoil_spring>, bronze);
  stoneCutter.addRecipe("cutting_bronze_vert_twin_autocannon_breech", <item:cbc_at:bronze_vert_twin_autocannon_breech>, bronze);
  stoneCutter.addRecipe("cutting_bronze_vert_twin_autocannon_silencer", <item:cbc_at:bronze_vert_twin_autocannon_silencer>, bronze);
  stoneCutter.addRecipe("cutting_bronze_vert_twin_autocannon_muzzle_brake", <item:cbc_at:bronze_vert_twin_autocannon_muzzle_brake>, bronze);
  stoneCutter.addRecipe("cutting_bronze_autocannon_silencer", <item:cbc_at:bronze_autocannon_silencer>, bronze);
  stoneCutter.addRecipe("cutting_bronze_autocannon_muzzle_brake", <item:cbc_at:bronze_autocannon_muzzle_brake>, bronze);
  stoneCutter.addRecipe("cutting_steel_twin_autocannon_barrel", <item:cbc_at:steel_twin_autocannon_barrel>, steel);
  stoneCutter.addRecipe("cutting_steel_twin_autocannon_recoil_spring", <item:cbc_at:steel_twin_autocannon_recoil_spring>, steel);
  stoneCutter.addRecipe("cutting_steel_twin_autocannon_breech", <item:cbc_at:steel_twin_autocannon_breech>, steel);
  stoneCutter.addRecipe("cutting_steel_twin_autocannon_silencer", <item:cbc_at:steel_twin_autocannon_silencer>, steel);
  stoneCutter.addRecipe("cutting_steel_twin_autocannon_muzzle_brake", <item:cbc_at:steel_twin_autocannon_muzzle_brake>, steel);
  stoneCutter.addRecipe("cutting_steel_vert_twin_autocannon_barrel", <item:cbc_at:steel_vert_twin_autocannon_barrel>, steel);
  stoneCutter.addRecipe("cutting_steel_vert_twin_autocannon_recoil_spring", <item:cbc_at:steel_vert_twin_autocannon_recoil_spring>, steel);
  stoneCutter.addRecipe("cutting_steel_vert_twin_autocannon_breech", <item:cbc_at:steel_vert_twin_autocannon_breech>, steel);
  stoneCutter.addRecipe("cutting_steel_vert_twin_autocannon_silencer", <item:cbc_at:steel_vert_twin_autocannon_silencer>, steel);
  stoneCutter.addRecipe("cutting_steel_vert_twin_autocannon_muzzle_brake", <item:cbc_at:steel_vert_twin_autocannon_muzzle_brake>, steel);
  stoneCutter.addRecipe("cutting_steel_autocannon_silencer", <item:cbc_at:steel_autocannon_silencer>, steel);
  stoneCutter.addRecipe("cutting_steel_autocannon_muzzle_brake", <item:cbc_at:steel_autocannon_muzzle_brake>, steel);

  stoneCutter.addRecipe("cutting_cast_iron_rifled_barrel", <item:cbc_at:cast_iron_rifled_barrel>, iron);
  stoneCutter.addRecipe("cutting_bronze_rifled_barrel", <item:cbc_at:bronze_rifled_barrel>, bronze);
  stoneCutter.addRecipe("cutting_steel_rifled_barrel", <item:cbc_at:steel_rifled_barrel>, steel);
  stoneCutter.addRecipe("cutting_nethersteel_rifled_barrel", <item:cbc_at:nethersteel_rifled_barrel>, nethersteel);
  stoneCutter.addRecipe("cutting_built_up_steel_rifled_barrel", <item:cbc_at:built_up_steel_rifled_barrel>, steel);
  stoneCutter.addRecipe("cutting_built_up_nethersteel_rifled_barrel", <item:cbc_at:built_up_nethersteel_rifled_barrel>, nethersteel);
  
  stoneCutter.addRecipe("cutting_cast_iron_heavy_autocannon_barrel", <item:cbc_at:cast_iron_heavy_autocannon_barrel>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_heavy_autocannon_recoil_spring", <item:cbc_at:cast_iron_heavy_autocannon_recoil_spring>, iron);
  stoneCutter.addRecipe("cutting_cast_iron_heavy_autocannon_breech", <item:cbc_at:cast_iron_heavy_autocannon_breech>, iron);
  stoneCutter.addRecipe("cutting_bronze_heavy_autocannon_barrel", <item:cbc_at:bronze_heavy_autocannon_barrel>, bronze);
  stoneCutter.addRecipe("cutting_bronze_heavy_autocannon_recoil_spring", <item:cbc_at:bronze_heavy_autocannon_recoil_spring>, bronze);
  stoneCutter.addRecipe("cutting_bronze_heavy_autocannon_breech", <item:cbc_at:bronze_heavy_autocannon_breech>, bronze);
  stoneCutter.addRecipe("cutting_steel_heavy_autocannon_barrel", <item:cbc_at:steel_heavy_autocannon_barrel>, steel);
  stoneCutter.addRecipe("cutting_steel_heavy_autocannon_recoil_spring", <item:cbc_at:steel_heavy_autocannon_recoil_spring>, steel);
  stoneCutter.addRecipe("cutting_steel_heavy_autocannon_breech", <item:cbc_at:steel_heavy_autocannon_breech>, steel);
}

//// dynamic trees
val biochar_P = <item:dynamictrees:dendro_potion>.withTag({potion_index:0});
val quick_grow_P = <item:dynamictrees:dendro_potion>.withTag({potion_index:3});
val fertile_P = <item:dynamictrees:dendro_potion>.withTag({potion_index:1});
val mega_size_P = <item:dynamictrees:dendro_potion>.withTag({potion_index:2});
val transform_P = <item:dynamictrees:dendro_potion>.withTag({potion_index:6});

{
  craftingTable.remove(<item:dynamictrees:apple_oak_seed>);
  craftingTable.addShapeless("apple_seedling",<item:dynamictrees:apple_oak_seed>,
  [<item:minecraft:apple>]);


  craftingTable.addShapeless("biochar_p", biochar_P,
  [bottle, coal]);

  craftingTable.addShapeless("fertile_p1", fertile_P,
  [biochar_P, bone_meal, bone_meal, bone_meal]);
  craftingTable.addShapeless("fertile_p2", fertile_P,
  [biochar_P, bone]);
  craftingTable.addShapeless("fertile_p3", fertile_P,
  [bottle, coal, bone_meal, bone_meal, bone_meal]);
  craftingTable.addShapeless("fertile_p4", fertile_P,
  [bottle, coal, bone]);

  craftingTable.addShapeless("quick_grow_p1", quick_grow_P,
  [biochar_P, bone, bone, bone]);
  craftingTable.addShapeless("quick_grow_p2", quick_grow_P,
  [biochar_P, bone_meal_block]);
  craftingTable.addShapeless("quick_grow_p3", quick_grow_P,
  [bottle, coal, bone, bone, bone]);
  craftingTable.addShapeless("quick_grow_p4", quick_grow_P,
  [bottle, coal, bone_meal_block]);

  craftingTable.addShapeless("mega_size_p1", mega_size_P,
  [biochar_P, pumpkin]);
  craftingTable.addShapeless("mega_size_p2", mega_size_P,
  [bottle, coal, pumpkin]);

  craftingTable.addShapeless("transform_p1", transform_P,
  [biochar_P, nether_wart]);
  craftingTable.addShapeless("transform_p2", transform_P,
  [bottle, coal, nether_wart]);
}


//// tinkers construct
val seared_brick = <item:tconstruct:seared_brick>;
val scorched_brick = <item:tconstruct:scorched_brick>;
val hammers = <tag:items:applemisc:hammers>;
hammers.add(<item:immersiveengineering:hammer>);
{
  <item:tconstruct:flint_shuriken>.maxStackSize = 64;
  <item:tconstruct:quartz_shuriken>.maxStackSize = 64;

  craftingTable.addShapeless("reset_tank1",<item:tconstruct:seared_fuel_gauge>,
  [<item:tconstruct:seared_fuel_gauge>]);
  craftingTable.addShapeless("reset_tank2",<item:tconstruct:seared_ingot_gauge>,
  [<item:tconstruct:seared_ingot_gauge>]);
  craftingTable.addShapeless("reset_tank3",<item:tconstruct:scorched_fuel_gauge>,
  [<item:tconstruct:scorched_fuel_gauge>]);
  craftingTable.addShapeless("reset_tank4",<item:tconstruct:scorched_ingot_gauge>,
  [<item:tconstruct:scorched_ingot_gauge>]);

  furnace.remove(seared_brick);
  furnace.addRecipe("great_grout_f", seared_brick * 4, <item:tconstruct:grout>, 0.8, 200);
  blastFurnace.remove(seared_brick);
  blastFurnace.addRecipe("great_grout_b", seared_brick * 4, <item:tconstruct:grout>, 0.8, 100);

  furnace.remove(scorched_brick);
  furnace.addRecipe("great_nether_grout_f", scorched_brick * 4, <item:tconstruct:nether_grout>, 2.0, 200);
  blastFurnace.remove(scorched_brick);
  blastFurnace.addRecipe("great_nether_grout_b", scorched_brick * 4, <item:tconstruct:nether_grout>, 2.0, 100);

  craftingTable.addShapeless("book_alternating1",<item:tconstruct:materials_and_you>,
  [<item:tconstruct:encyclopedia>]);
  craftingTable.remove(<item:tconstruct:puny_smelting>);
  craftingTable.addShapeless("book_alternating2",<item:tconstruct:puny_smelting>,
  [<item:tconstruct:materials_and_you>]);
  craftingTable.remove(<item:tconstruct:mighty_smelting>);
  craftingTable.addShapeless("book_alternating3",<item:tconstruct:mighty_smelting>,
  [<item:tconstruct:puny_smelting>]);
  craftingTable.remove(<item:tconstruct:tinkers_gadgetry>);
  craftingTable.addShapeless("book_alternating4",<item:tconstruct:tinkers_gadgetry>,
  [<item:tconstruct:mighty_smelting>]);
  craftingTable.remove(<item:tconstruct:fantastic_foundry>);
  craftingTable.addShapeless("book_alternating5",<item:tconstruct:fantastic_foundry>,
  [<item:tconstruct:tinkers_gadgetry>]);
  craftingTable.remove(<item:tconstruct:encyclopedia>);
  craftingTable.addShapeless("book_alternating6",<item:tconstruct:encyclopedia>,
  [<item:tconstruct:fantastic_foundry>]);

  craftingTable.addShapeless("creative_slot_upgrades", <item:tconstruct:creative_slot>.withTag({slot: "upgrades" as string}), [<item:dotcoinmod:platinum_coin>, hammers]);
  craftingTable.addShapeless("creative_slot_defense", <item:tconstruct:creative_slot>.withTag({slot: "defense" as string}), [<item:dotcoinmod:platinum_coin>, <item:minecraft:diamond_chestplate>]);
  craftingTable.addShapeless("creative_slot_abilities", <item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}), [<item:dotcoinmod:platinum_coin>, <item:minecraft:writable_book>]);

  craftingTable.remove(<item:farmersdelight:cutting_board>);
  craftingTable.addShapedMirrored("new_cutting_board", <constant:minecraft:mirroraxis:horizontal>, <item:farmersdelight:cutting_board>,
  [[stick,planks]]);
}


// botania
val ender_thing = <item:botania:ender_air_bottle>;
<tag:items:applemisc:magic_thing>.add(<item:botania:mana_bottle>);
<tag:items:applemisc:magic_thing>.add(<item:minecraft:experience_bottle>);
val magic_thing = <tag:items:applemisc:magic_thing>.asIIngredient();
val petals = [
  <item:botania:white_petal>,
  <item:botania:orange_petal>,
  <item:botania:magenta_petal>,
  <item:botania:light_blue_petal>,
  <item:botania:yellow_petal>,
  <item:botania:lime_petal>,
  <item:botania:pink_petal>,
  <item:botania:gray_petal>,
  <item:botania:light_gray_petal>,
  <item:botania:cyan_petal>,
  <item:botania:purple_petal>,
  <item:botania:blue_petal>,
  <item:botania:brown_petal>,
  <item:botania:green_petal>,
  <item:botania:red_petal>,
  <item:botania:black_petal>] as IItemStack[];

{

  craftingTable.addShapeless("ender_air_bottle",ender_thing * 4,
  [magic_thing,<item:minecraft:ender_pearl>]);

  craftingTable.addShapeless("end_stone", <item:minecraft:end_stone> * 8,
  [ender_thing,stone,stone,stone,stone,stone,stone,stone,stone]);


  for i, petal in petals{
    craftingTable.addShapeless("bio_petal" + i,petal * 4,
    [petal,<item:minecraft:bone_meal>]);
  }
}


//// hole filler
{
  craftingTable.addShaped("thf_other_slimeball",<item:hole_filler_mod:throwable_hole_filler> * 8,
    [[nil,<item:minecraft:dirt>,nil],
    [<item:minecraft:dirt>,<tag:items:forge:slimeballs>.asIIngredient(),<item:minecraft:dirt>],
    [nil,<item:minecraft:dirt>,nil]]
  );
}


//// supplementaries
val ash = <item:supplementaries:ash>;
val ash_brick = <item:supplementaries:ash_brick>;
{
  furnace.addRecipe("leaves_ash", ash, leaves, 1.0, 100);

  craftingTable.addShapeless("brick2ash_brick", ash_brick,
  [brick]);
  craftingTable.addShapeless("ash_brick2brick", brick,
  [ash_brick]);
}


//// easy villager
craftingTable.addShaped("easy_auto_trader", <item:easy_villagers:auto_trader>,
  [[glassPane,glassPane,glassPane],
  [glassPane,redstone,glassPane],
  [iron,<item:minecraft:nether_bricks>,iron]]
);


//// scaling health
craftingTable.addShapeless("cnv_heart_crystal_shard", <item:scalinghealth:heart_crystal_shard>, [<item:scalinghealth:power_crystal_shard>, redstone]);
craftingTable.addShapeless("cnv_power_crystal_shard", <item:scalinghealth:power_crystal_shard>, [<item:scalinghealth:heart_crystal_shard>, lapis]);

craftingTable.addShapeless("bandage_recycle", paper, [<item:scalinghealth:bandages>]);
craftingTable.addShapeless("medkit_recycle", <item:scalinghealth:bandages> * 4, [<item:scalinghealth:medkit>]);


//// mob battle
{
  craftingTable.addShapedMirrored("mob_stick", <constant:minecraft:mirroraxis:horizontal>, <item:mobbattle:mob_stick>,
    [[nil, nil, <item:minecraft:lightning_rod>],
    [nil, <item:minecraft:copper_ingot>, nil],
    [<item:minecraft:copper_ingot>, nil, nil]
  ]);

  craftingTable.addShapeless("mobbattle_alternating1", <item:mobbattle:egg_ex>,
  [<item:mobbattle:mob_stick>]);
  craftingTable.addShapeless("mobbattle_alternating2", <item:mobbattle:mob_effect_give>,
  [<item:mobbattle:egg_ex>]);
  craftingTable.addShapeless("mobbattle_alternating3", <item:mobbattle:mob_equip>,
  [<item:mobbattle:mob_effect_give>]);
  craftingTable.addShapeless("mobbattle_alternating4", <item:mobbattle:mob_army>,
  [<item:mobbattle:mob_equip>]);
  craftingTable.addShapeless("mobbattle_alternating5", <item:mobbattle:mob_mount>,
  [<item:mobbattle:mob_army>]);
  craftingTable.addShapeless("mobbattle_alternating6", <item:mobbattle:mob_armor>,
  [<item:mobbattle:mob_mount>]);
  craftingTable.addShapeless("mobbattle_alternating7", <item:mobbattle:mob_group>,
  [<item:mobbattle:mob_armor>]);
  craftingTable.addShapeless("mobbattle_alternating8", <item:mobbattle:mob_effect>,
  [<item:mobbattle:mob_group>]);
  craftingTable.addShapeless("mobbattle_alternating9", <item:mobbattle:mob_heal>,
  [<item:mobbattle:mob_effect>]);
  craftingTable.addShapeless("mobbattle_alternating10", <item:mobbattle:mob_kill>,
  [<item:mobbattle:mob_heal>]);
  craftingTable.addShapeless("mobbattle_alternating11", <item:mobbattle:mob_stick>,
  [<item:mobbattle:mob_kill>]);
}

//// Epic knight
{
  craftingTable.addShaped("comp_fabric", <item:minecraft:white_wool> * 3, [
    [<item:magistuarmory:woolen_fabric>, <item:magistuarmory:woolen_fabric>],
    [<item:magistuarmory:woolen_fabric>, <item:magistuarmory:woolen_fabric>]
  ]);
}

//// Quark
{
  craftingTable.addShapeless("enchanting_table_convert0", <item:minecraft:enchanting_table>,
  [<item:quark:matrix_enchanter>]);
  craftingTable.addShapeless("enchanting_table_convert1", <item:quark:matrix_enchanter>,
  [<item:minecraft:enchanting_table>]);
}

//// tacz
{
  craftingTable.addShaped("super_ammo_box", <item:tacz:ammo_box>.withTag({Level: 1024, display:{Name:"{\"text\":\"Super Ammo Box\"}"}}), [
    [planks, nether_star, planks],
    [planks, nil, planks],
    [planks, planks, planks],
  ]);
}

{
  craftingTable.addShapeless("decomp_burnt_log", <item:minecraft:charcoal>*4, [<item:burnt:burnt_log>]);
}