
#コインチェック->共通関数:(コイン減算->loot)
execute store result score $need Core.Coin run data get block 0 0 0 Items[0].tag.Shop.Buy
#コインが不足しているなら
execute if score $need Core.Coin > @s Players.Coin run return -1
#コインを減算する
scoreboard players operation @s Players.Coin -= $need Core.Coin
#不要な属性を削除する
data remove block 0 0 0 Items[0].tag.ShopItem
data remove block 0 0 0 Items[0].tag.Shop
#スコアをLoreに書き込む
data remove block 0 0 0 Items[0].tag.display.Lore
function m_core:gui/shop/item_click/buy/change_lore
#アイテムを付与する
loot give @s mine 0 0 0 barrier
#0 0 0 を空にする
data remove block 0 0 0 Items[]