
# 武器のセット
execute on passengers run data modify entity @s[tag=Shop.Minecart.SetItemNow] Items set from entity @s Passengers[0].data.Fruits
# 戻るボタンのセット
data modify entity @s[tag=Shop.Minecart.SetItemNow] Items append value {Slot:17b,count:1b,id:"minecraft:barrier",components:{"minecraft:custom_data":{ShopItem:true},display:{Name:'[{"translate":"RPG.MSG.BackOp"}]'}}}

tag @s remove Minecart.Shop.InitDisplay
tag @s add Minecart.Shop.FruitDisplay