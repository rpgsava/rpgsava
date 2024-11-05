
#1段階目でクリックされた時
#どこが無くなっているかをチェックする (10,11,12,13 = 武器、食料、アーマー、その他)
execute store result score $10 Core.Shop.IsClickItem if data entity @s Items[{Slot:10b}]
execute store result score $11 Core.Shop.IsClickItem if data entity @s Items[{Slot:11b}]
execute store result score $12 Core.Shop.IsClickItem if data entity @s Items[{Slot:12b}]
execute store result score $13 Core.Shop.IsClickItem if data entity @s Items[{Slot:13b}]

tag @s add Shop.Minecart.SetItemNow
execute if score $10 Core.Shop.IsClickItem matches 0 run function m_core:gui/shop/item_click/set_weapons
execute if score $11 Core.Shop.IsClickItem matches 0 run function m_core:gui/shop/item_click/set_armors
execute if score $12 Core.Shop.IsClickItem matches 0 run function m_core:gui/shop/item_click/set_fruits
execute if score $13 Core.Shop.IsClickItem matches 0 run function m_core:gui/shop/item_click/set_others
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

#クリック音を出す
playsound ui.button.click master @a[tag=Shop.Practitioner] ~ ~ ~ 2 1