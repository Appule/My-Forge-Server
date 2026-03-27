import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.tag.manager.ITagManager;


/**
 * 複数入力に対応した単体クラフトを追加
 * @param id        レシピID（string）
 * @param output    成果物アイテム（IItemStack）
 * @param baseCount 成果物の基本個数（int）
 * @param input     対象アイテム（IIngredient）
 * @param catalyst  触媒アイテム（IIngredient）※null可
 */
public function addMultiCraftRecipe(id as string, output as IItemStack, baseCount as int, input as IIngredient, catalyst as IIngredient?) as void {
  val maxInput = (catalyst != null) ? 8 : 9;

  for i in 0 .. maxInput {
    val recipeId = id + "_" + (i+1);
    val result = output * (baseCount * (i+1));

    // 正しいリストの生成
    var inputs = new stdlib.List<IIngredient>();
    if (catalyst != null) {
      inputs.add(catalyst);
    }
    
    for j in 0 .. (i+1) {
      inputs.add(input);
    }

    craftingTable.addShapeless(recipeId, result, inputs);
  }
}

// 売却レシピを追加する関数
// itemToSell: 売却対象アイテム
// coinType: "copper", "iron", "gold", "platinum" のいずれか
// coinAmount: 返却されるコインの枚数
// recipeId: レシピID（ユニークな文字列）
public function addSellRecipe(itemToSell as IItemStack, coinType as string, coinAmount as int, recipeId as string) as void {
  // coinType に応じてコインのアイテムを選択
  var coin as IItemStack;
  if (coinType == "copper") {
    coin = <item:dotcoinmod:copper_coin>;
  } else if (coinType == "iron") {
    coin = <item:dotcoinmod:iron_coin>;
  } else if (coinType == "gold") {
    coin = <item:dotcoinmod:gold_coin>;
  } else if (coinType == "platinum") {
    coin = <item:dotcoinmod:platinum_coin>;
  } else {
    // 未知のコインタイプなら何もしない
    return;
  }
  // 売却レシピ（shapeless）を追加
  addMultiCraftRecipe(recipeId, coin, coinAmount, itemToSell, <item:dotcoinmod:copper_coin>);
}

public function addAmmoRecipe(id as string, ammoId as string, amount as int) as void {
  stoneCutter.addRecipe(id, <item:tacz:ammo>.withTag({AmmoId: ammoId}) * amount, <item:dotcoinmod:copper_coin>);
  if(amount * 8 > 64) { return; }
  stoneCutter.addRecipe(id + "_" + 8, <item:tacz:ammo>.withTag({AmmoId: ammoId}) * (amount * 8), <item:dotcoinmod:iron_coin>);
}
