data remove storage core:shop exist
# どこが元々あってどこがなくなったかを検知する
    # 元々売っていたか(元々売ってきてなかったなら無くなっているかを判定する必要がない)
    execute on passengers run data modify storage core:shop exist.10 set from entity @s data.Fruits[{Slot:10b}]
    execute on passengers run data modify storage core:shop exist.11 set from entity @s data.Fruits[{Slot:11b}]
    execute on passengers run data modify storage core:shop exist.12 set from entity @s data.Fruits[{Slot:12b}]
    execute on passengers run data modify storage core:shop exist.13 set from entity @s data.Fruits[{Slot:13b}]
    execute on passengers run data modify storage core:shop exist.14 set from entity @s data.Fruits[{Slot:14b}]
    execute on passengers run data modify storage core:shop exist.15 set from entity @s data.Fruits[{Slot:15b}]
    # 17は戻る(無くなっていたら$isCatch17 = true)
    execute store result score $isCatch17 Core.Shop.IsExistItem unless data entity @s Items[{Slot:17b}]


#クリック音を出す
playsound ui.button.click master @a[tag=Shop.Practitioner] ~ ~ ~ 2 1

#戻るがクリックされているなら
execute if score $isCatch17 Core.Shop.IsExistItem matches 1 run function m_core:gui/shop/open_init
execute if score $isCatch17 Core.Shop.IsExistItem matches 1 run return -3


# 複数の取引がある場合は元々の数と現在の数が違うかを比較する
execute store result score $10 Core.Shop.IsExistItem run data get storage core:shop exist.10.Count
execute store result score $11 Core.Shop.IsExistItem run data get storage core:shop exist.11.Count
execute store result score $12 Core.Shop.IsExistItem run data get storage core:shop exist.12.Count
execute store result score $13 Core.Shop.IsExistItem run data get storage core:shop exist.13.Count
execute store result score $14 Core.Shop.IsExistItem run data get storage core:shop exist.14.Count
execute store result score $15 Core.Shop.IsExistItem run data get storage core:shop exist.15.Count
execute store result score $10_ Core.Shop.IsExistItem run data get entity @s Items[{Slot:10b}].count
execute store result score $11_ Core.Shop.IsExistItem run data get entity @s Items[{Slot:11b}].count
execute store result score $12_ Core.Shop.IsExistItem run data get entity @s Items[{Slot:12b}].count
execute store result score $13_ Core.Shop.IsExistItem run data get entity @s Items[{Slot:13b}].count
execute store result score $15_ Core.Shop.IsExistItem run data get entity @s Items[{Slot:15b}].count
execute if score $10 Core.Shop.IsExistItem > $10_ Core.Shop.IsExistItem run data modify block 0 0 0 Items[] set from storage core:shop exist.10
execute if score $11 Core.Shop.IsExistItem > $11_ Core.Shop.IsExistItem run data modify block 0 0 0 Items[] set from storage core:shop exist.11
execute if score $12 Core.Shop.IsExistItem > $12_ Core.Shop.IsExistItem run data modify block 0 0 0 Items[] set from storage core:shop exist.12
execute if score $13 Core.Shop.IsExistItem > $13_ Core.Shop.IsExistItem run data modify block 0 0 0 Items[] set from storage core:shop exist.13
execute if score $14 Core.Shop.IsExistItem > $14_ Core.Shop.IsExistItem run data modify block 0 0 0 Items[] set from storage core:shop exist.14
execute if score $15 Core.Shop.IsExistItem > $15_ Core.Shop.IsExistItem run data modify block 0 0 0 Items[] set from storage core:shop exist.15

data modify block 0 0 0 Items[0].Slot set value 0b

# アイテムを戻す
tag @s add Shop.Minecart.SetItemNow
function m_core:gui/shop/item_click/set_fruits
function m_core:gui/shop/item_click/set_all_shopitemtag
tag @s remove Shop.Minecart.SetItemNow
#まわりのガラスをセット
item replace entity @s container.0 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.1 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.2 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.3 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.4 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.5 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.6 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.7 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.8 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.18 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.19 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.20 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.21 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.22 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.23 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.24 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.25 with black_stained_glass_pane[custom_data={ShopItem:true}] 1
item replace entity @s container.26 with black_stained_glass_pane[custom_data={ShopItem:true}] 1

#買うための枠があるか(27番目の枠が存在しない(0)or100以上ならあいている)
execute store result score $myItems Core.Shop.IsExistItem run data get entity @a[tag=Shop.Practitioner,limit=1] Inventory[35].Slot
execute if score $myItems Core.Shop.IsExistItem matches 35 run return -2
#購入処理を行う
execute as @a[tag=Shop.Practitioner,limit=1] at @s store result score $Return Core.System.Input run function m_core:gui/shop/item_click/buy/_common
## 注釈 >> 1.20.1時点ではReturnによって値を受け、
##         さらにその外側で同じ領域で受ける場合は1度参照すると内容が変わってしまう
##         (おそらく参照した際に戻り値としてStore関数の外のstoreに値が入ってしまうため)

execute if score $Return Core.System.Input matches -1 run data modify entity @s Items append value {Slot:16b,count:1b,id:"minecraft:red_stained_glass",components: {"minecraft:custom_data": {ShopItem:true},display:{Name:'[{"translate":"RPG.Shop.NoCoin","color":"red"}]'}}}