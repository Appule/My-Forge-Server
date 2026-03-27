import crafttweaker.api.tag.MCTag;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import stdlib.List;


// potions
<item:minecraft:potion>.maxStackSize = 64;
<item:minecraft:splash_potion>.maxStackSize = 64;
<item:minecraft:lingering_potion>.maxStackSize = 64;

//// potion stuff
// cannibal
val cannibal_stuff = <tag:items:kh:cannibal_stuff>;
cannibal_stuff.add(<item:scalinghealth:heart_crystal>);
cannibal_stuff.add(<item:butchery:raw_villager_steak>);
cannibal_stuff.add(<item:butchery:cooked_villager_steak>);
cannibal_stuff.add(<item:butchery:flesh>);
cannibal_stuff.add(<item:butchery:rawhumanmeat>);
cannibal_stuff.add(<item:butchery:cookedhumanmeat>);
cannibal_stuff.add(<item:butchery:raw_pillager_meat>);
cannibal_stuff.add(<item:butchery:cooked_pillager_meat>);


val hearts = <tag:items:kh:hearts>;
hearts.add(<item:scalinghealth:heart_crystal>);
hearts.add(<item:butchery:heart>);
hearts.add(<item:butchery:frog_heart>);


var id = 0 as int;

// id 0
val PE_life_flavor = id++; // wandering_bags // life_flavor

// vanilla
val PE_agilup = id++;
val PE_agildw = id++;
val PE_speedu = id++;
val PE_speedd = id++;
val PE_strong = id++;
val PE_helthu = id++;
val PE_helthd = id++;
val PE_jumpup = id++;
val PE_nausea = id++;
val PE_regene = id++;
val PE_regist = id++;
val PE_atfire = id++;
val PE_breath = id++;
val PE_invisi = id++;
val PE_blindo = id++;
val PE_nightv = id++;
val PE_hunger = id++;
val PE_dmgedw = id++;
val PE_poison = id++;
val PE_wither = id++;
val PE_helthb = id++;
val PE_absorb = id++;
val PE_satura = id++;
val PE_glowin = id++;
val PE_levita = id++;
val PE_luckup = id++;
val PE_luckdw = id++;
val PE_slowfl = id++;
val PE_condit = id++;
val PE_dolfin = id++;
val PE_raider = id++;
val PE_vlhero = id++;

//PotionEffects
//vampire & piller potions
val second = 20 as int;
val minute = 1200 as int;
val bottle = <item:minecraft:glass_bottle>;
val arrow = <item:minecraft:arrow>;
val crimson_stone_core = <item:minecraft:emerald>;
val crimson_stones = new IItemStack[](8, <item:minecraft:air>);
val vampire_potions = new IItemStack[](8, <item:minecraft:air>);
val vampire_potions_s = new IItemStack[](8, <item:minecraft:air>);
val vampire_arrows = new IItemStack[](8, <item:minecraft:air>);
val aja_stones = new IItemStack[](8, <item:minecraft:air>);
val piller_potions = new IItemStack[](8, <item:minecraft:air>);
val piller_potions_s = new IItemStack[](8, <item:minecraft:air>);
val piller_arrows = new IItemStack[](8, <item:minecraft:air>);
val god_stones = new IItemStack[](8, <item:minecraft:air>);
val god_potions = new IItemStack[](8, <item:minecraft:air>);
val god_potions_s = new IItemStack[](8, <item:minecraft:air>);
val god_arrows = new IItemStack[](8, <item:minecraft:air>);

val fluid_blood_list = [<fluid:tconstruct:meat_soup>];
var lv = 0 as string;
var liquid as int;
var crimson_stone as IItemStack;
var tags as IData;
for i in 0 .. 8{
  lv = i + 1;
  liquid = 100 * (i+1) as int;
  crimson_stone = crimson_stone_core.withTag({display: {Name:'{"text":"§r紅い石 Lv' + lv + '"}'}, crimson: i as byte});
  crimson_stones[i] = crimson_stone;
  tags = {CustomPotionEffects: [
    {Id: PE_agilup, Amplifier: i/4  , Duration: minute*240},
    {Id: PE_speedu, Amplifier: i/4  , Duration: minute*240},
    {Id: PE_strong, Amplifier: i    , Duration: minute*240},
    {Id: PE_jumpup, Amplifier: i/8  , Duration: minute*240},
    {Id: PE_regene, Amplifier: i    , Duration: minute*240},
    {Id: PE_nightv, Amplifier: 0    , Duration: minute*240},
    {Id: PE_helthb, Amplifier: i    , Duration: minute*240},
    {Id: PE_hunger, Amplifier: i/2  , Duration: minute*240}], CustomPotionColor: 14417920 - i * 1310720, display:{Name:'{"text":"§r吸血鬼のポーション Lv' + lv + '"}'}} as IData;
  vampire_potions[i] = <item:minecraft:potion>.withTag(tags);
  vampire_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  vampire_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
  if (i == 0) {
    craftingTable.addShapeless("vampire" + i, crimson_stone, [<item:butchery:blood_splatter>, crimson_stone_core]);
  }else{
    for j, blood in fluid_blood_list{
      <recipetype:create:filling>.addRecipe("vampire" + i + "_" + j, crimson_stone, crimson_stones[i-1], blood * liquid, 60);
    }
  }
}

for i in 0 .. 8{
  lv = i + 1;
  liquid = 72 * (i+1);
  aja_stones[i] = crimson_stone_core.withTag({display: {Name:'{"text":"§rエイジャの石 Lv' + lv + '"}'}, aja: i as byte});
  tags = {CustomPotionEffects: [
    {Id: PE_agilup, Amplifier: i/2  , Duration: minute*240},
    {Id: PE_speedu, Amplifier: i/2  , Duration: minute*240},
    {Id: PE_strong, Amplifier: i*2+1, Duration: minute*240},
    {Id: PE_jumpup, Amplifier: i/4  , Duration: minute*240},
    {Id: PE_regene, Amplifier: i*2+1, Duration: minute*240},
    {Id: PE_nightv, Amplifier: 0    , Duration: minute*240},
    {Id: PE_helthb, Amplifier: i*2+1, Duration: minute*240},
    {Id: PE_hunger, Amplifier: i/4  , Duration: minute*240},
    {Id: PE_regist, Amplifier: i*2  , Duration: minute*240}], CustomPotionColor: 14474460 - i * 1315860, display:{Name:'{"text":"§r柱の男のポーション Lv' + lv + '"}'}} as IData;
  piller_potions[i] = <item:minecraft:potion>.withTag(tags);
  piller_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  piller_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
  <recipetype:create:filling>.addRecipe("piller_fron_vampire" + i, aja_stones[i], crimson_stones[i], <fluid:tconstruct:seared_stone> * liquid, 60);
  if (i > 0) {
    <recipetype:create:filling>.addRecipe("piller_from_piller" + i, aja_stones[i], aja_stones[i-1], <fluid:tconstruct:seared_stone> * liquid, 60);
  }
}

for i in 0 .. 8{
  lv = i + 1;
  liquid = 100 * (i+1);
  god_stones[i] = crimson_stone_core.withTag({display: {Name:'{"text":"§r覚醒したエイジャの石 Lv' + lv + '"}'}, god: i as byte});
  tags = {CustomPotionEffects: [
    {Id: PE_agilup, Amplifier: i/2+1, Duration: minute*240},
    {Id: PE_speedu, Amplifier: i/2+1, Duration: minute*240},
    {Id: PE_strong, Amplifier: i*2+4, Duration: minute*240},
    {Id: PE_jumpup, Amplifier: i/4  , Duration: minute*240},
    {Id: PE_regene, Amplifier: i*3+2, Duration: minute*240},
    {Id: PE_nightv, Amplifier: 0    , Duration: minute*240},
    {Id: PE_helthb, Amplifier: i*3+2, Duration: minute*240},
    {Id: PE_regist, Amplifier: i*2+2, Duration: minute*240}], CustomPotionColor: 5263360 + i * 1315840, display:{Name:'{"text":"§r究極生命体のポーション Lv' + lv + '"}'}} as IData;
  god_potions[i] = <item:minecraft:potion>.withTag(tags);
  god_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  god_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
  <recipetype:create:filling>.addRecipe("god_from_piller" + i, god_stones[i], aja_stones[i], <fluid:tconstruct:molten_rose_gold> * 384, 60);
  if (i > 0) {
    for j, blood in fluid_blood_list{
      <recipetype:create:filling>.addRecipe("god_from_god" + i + "_" + j, god_stones[i], god_stones[i-1], blood * liquid, 60);
    }
  }
}

for i, vampire_potion in vampire_potions{
  lv = i + 1;
  craftingTable.addShapeless("vampire_p" + i, vampire_potion * 8, [bottle,bottle,bottle,bottle,bottle,bottle,bottle,bottle,crimson_stone_core.withTag({display: {Name:'{"text":"§r紅い石 Lv' + lv + '"}'}, crimson: i as byte})]);
  craftingTable.addShapeless("vampire_p_s" + i, vampire_potions_s[i], [vampire_potion]);
  craftingTable.addShapeless("vampire_a" + i, vampire_arrows[i] * 8, [vampire_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
}

for i, piller_potion in piller_potions{
  lv = i + 1;
  craftingTable.addShapeless("piller_p" + i, piller_potion * 8,[bottle,bottle,bottle,bottle,bottle,bottle,bottle,bottle,crimson_stone_core.withTag({display: {Name:'{"text":"§rエイジャの石 Lv' + lv + '"}'}, aja: i as byte})]);
  craftingTable.addShapeless("piller_p_s" + i, piller_potions_s[i], [piller_potion]);
  craftingTable.addShapeless("piller_a" + i, piller_arrows[i] * 8, [piller_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
}

for i, god_potion in god_potions{
  lv = i + 1;
  craftingTable.addShapeless("god_p" + i, god_potion * 8,[bottle,bottle,bottle,bottle,bottle,bottle,bottle,bottle,crimson_stone_core.withTag({display: {Name:'{"text":"§r覚醒したエイジャの石 Lv' + lv + '"}'}, god: i as byte})]);
  craftingTable.addShapeless("god_p_s" + i, god_potions_s[i], [god_potion]);
  craftingTable.addShapeless("god_a" + i, god_arrows[i] * 8, [god_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
}

# raiders potion
var maxLv = 5;
var special_potions = new IItemStack[](maxLv, <item:minecraft:air>);
var special_potions_s = new IItemStack[](maxLv, <item:minecraft:air>);
var special_arrows = new IItemStack[](maxLv, <item:minecraft:air>);
var potionName = "襲撃のポーション" as string;
var decName = "raider" as string;
var startColor = 15360 as int;
var stepColor = 5120 as int;
var stuff = <item:minecraft:emerald> as IIngredient;

for i in 0 .. maxLv{
  lv = i + 1;
  tags = {CustomPotionEffects: [{Id: PE_raider, Amplifier: i, Duration: minute*360}], CustomPotionColor: startColor + i * stepColor, display:{Name:'{"text":"§r' + potionName + ' Lv' + lv + '"}'}} as IData;
  special_potions[i] = <item:minecraft:potion>.withTag(tags);
  special_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  special_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
}

for i, potion in special_potions{
  if (i == 0) {
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [<item:minecraft:potion>, <item:minecraft:pillager_spawn_egg>]);
  }else{
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [special_potions[i-1], stuff, stuff, stuff]);
  }
  craftingTable.addShapeless(decName+"_p_s" + i, special_potions_s[i], [potion]);
  craftingTable.addShapeless(decName+"_a" + i, special_arrows[i] * 8, [special_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
}

# potion of hearts
maxLv = 8;
special_potions = new IItemStack[](maxLv, <item:minecraft:air>);
special_potions_s = new IItemStack[](maxLv, <item:minecraft:air>);
special_arrows = new IItemStack[](maxLv, <item:minecraft:air>);
potionName = "心臓のポーション" as string;
decName = "hearts" as string;
startColor = 14423060 as int;
stepColor = -1310720 as int;
stuff = hearts.asIIngredient();

for i in 0 .. maxLv{
  lv = i + 1;
  tags = {CustomPotionEffects: [
    {Id: PE_regene, Amplifier: i/2, Duration: (i+1)*20*minute},
    {Id: PE_absorb, Amplifier: i, Duration: (i+1)*20*minute},
    {Id: PE_satura, Amplifier: (i+1)*10, Duration: second}
  ], CustomPotionColor: startColor + i * stepColor, display:{Name:'{"text":"§r' + potionName + ' Lv' + lv + '"}'}} as IData;
  special_potions[i] = <item:minecraft:potion>.withTag(tags);
  special_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  special_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
}

for i, potion in special_potions{
  if (i == 0) {
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [bottle, stuff]);
  }else{
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [special_potions[i-1], stuff]);
  }
  craftingTable.addShapeless(decName+"_p_s" + i, special_potions_s[i], [potion]);
  craftingTable.addShapeless(decName+"_a" + i, special_arrows[i] * 8, [special_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
}

# potion of cannibal
maxLv = 8;
special_potions = new IItemStack[](maxLv, <item:minecraft:air>);
special_potions_s = new IItemStack[](maxLv, <item:minecraft:air>);
special_arrows = new IItemStack[](maxLv, <item:minecraft:air>);
potionName = "食人族のポーション" as string;
decName = "cannibal" as string;
startColor = 16765560 as int;
stepColor = -1315860 as int;
stuff = cannibal_stuff.asIIngredient();

for i in 0 .. maxLv{
  lv = i + 1;
  tags = {CustomPotionEffects: [
    {Id: PE_strong, Amplifier: i, Duration: (i+1)*15*minute},
    {Id: PE_regist, Amplifier: i/2, Duration: (i+1)*15*minute},
    {Id: PE_agilup, Amplifier: i/2, Duration: (i+1)*15*minute}], CustomPotionColor: startColor + i * stepColor, display:{Name:'{"text":"§r' + potionName + ' Lv' + lv + '"}'}} as IData;
  special_potions[i] = <item:minecraft:potion>.withTag(tags);
  special_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  special_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
}

for i, potion in special_potions{
  if (i == 0) {
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [bottle, stuff, stuff, stuff, stuff]);
  }else{
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [special_potions[i-1], special_potions[i-1].reuse().transformReplace(bottle)]);
  }
  craftingTable.addShapeless(decName+"_p_s" + i, special_potions_s[i], [potion]);
  craftingTable.addShapeless(decName+"_a" + i, special_arrows[i] * 8, [special_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
}

# blood
maxLv = 5;
special_potions = new IItemStack[](maxLv, <item:minecraft:air>);
special_potions_s = new IItemStack[](maxLv, <item:minecraft:air>);
special_arrows = new IItemStack[](maxLv, <item:minecraft:air>);
potionName = "血のような液体の入ったボトル" as string;
decName = "blood" as string;
startColor = 14417920 as int;
stepColor = -1310720 as int;
stuff = <item:butchery:blood_splatter>;

for i in 0 .. maxLv{
  lv = i + 1;
  tags = {CustomPotionEffects: [
    {Id: PE_satura, Amplifier: (i+1)*4, Duration: second},
    {Id: PE_nightv, Amplifier: i, Duration: (i+1)*20*minute},
    {Id: PE_jumpup, Amplifier: i/2, Duration: (i+1)*20*minute}], CustomPotionColor: startColor + i * stepColor, display:{Name:'{"text":"§r' + potionName + ' Lv' + lv + '"}'}} as IData;
  special_potions[i] = <item:minecraft:potion>.withTag(tags);
  special_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  special_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
}

// val blood_drop = <tag:items:applemisc:blood_drop>.asIIngredient();
for i, potion in special_potions{
  if (i == 0) {
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [bottle, stuff]);
  }else{
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [special_potions[i-1], stuff]);
  }
  craftingTable.addShapeless(decName+"_p_s" + i, special_potions_s[i], [potion]);
  craftingTable.addShapeless(decName+"_a" + i, special_arrows[i] * 8, [special_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
}

# 正露丸
maxLv = 5;
special_potions = new IItemStack[](maxLv, <item:minecraft:air>);
special_potions_s = new IItemStack[](maxLv, <item:minecraft:air>);
special_arrows = new IItemStack[](maxLv, <item:minecraft:air>);
potionName = "正露丸 原液(食用)" as string;
decName = "creosote" as string;
startColor = 6563840 as int;
stepColor = -656384 as int;

for i in 0 .. maxLv{
  lv = i + 1;
  tags = {CustomPotionEffects: [
    {Id: PE_luckup, Amplifier: i, Duration: (i+1)*20*minute},
    {Id: PE_absorb, Amplifier: i, Duration: (i+1)*20*minute}], CustomPotionColor: startColor + i * stepColor, display:{Name:'{"text":"§r' + potionName + ' Lv' + lv + '"}'}} as IData;
  special_potions[i] = <item:minecraft:potion>.withTag(tags);
  special_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  special_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
}

var mul = 50;
for i, potion in special_potions{
  if (i == 0) {
    <recipetype:create:filling>.addRecipe(decName+"_potion_v" + i, potion, bottle, <fluid:immersiveengineering:creosote>*mul, 20);
  }else{
    <recipetype:create:filling>.addRecipe(decName+"_potion_v" + i, potion, special_potions[i-1], <fluid:immersiveengineering:creosote>*mul, 20);
  }
  craftingTable.addShapeless(decName+"_p_s" + i, special_potions_s[i], [potion]);
  craftingTable.addShapeless(decName+"_a" + i, special_arrows[i] * 8, [special_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
  mul *= 2;
}

# hero
maxLv = 5;
special_potions = new IItemStack[](maxLv, <item:minecraft:air>);
special_potions_s = new IItemStack[](maxLv, <item:minecraft:air>);
special_arrows = new IItemStack[](maxLv, <item:minecraft:air>);
potionName = "ヒーローポーション" as string;
decName = "hero" as string;
startColor = 15360 as int;
stepColor = 5120 as int;
stuff = <item:minecraft:totem_of_undying>;

for i in 0 .. maxLv{
  lv = i + 1;
  tags = {CustomPotionEffects: [
    {Id: PE_vlhero, Amplifier: i, Duration: (i+1)*20*minute}], CustomPotionColor: startColor + i * stepColor, display:{Name:'{"text":"§r' + potionName + ' Lv' + lv + '"}'}} as IData;
  special_potions[i] = <item:minecraft:potion>.withTag(tags);
  special_potions_s[i] = <item:minecraft:splash_potion>.withTag(tags);
  special_arrows[i] = <item:minecraft:tipped_arrow>.withTag(tags);
}

for i, potion in special_potions{
  if (i == 0) {
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [bottle, stuff]);
  }else{
    craftingTable.addShapeless(decName+"_potion_v" + i, potion,
    [special_potions[i-1], <item:minecraft:emerald>]);
  }
  craftingTable.addShapeless(decName+"_p_s" + i, special_potions_s[i], [potion]);
  craftingTable.addShapeless(decName+"_a" + i, special_arrows[i] * 8, [special_potions_s[i], arrow, arrow, arrow, arrow, arrow, arrow, arrow, arrow]);
}