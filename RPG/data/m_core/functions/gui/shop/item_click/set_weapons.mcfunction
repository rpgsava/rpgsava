

# 武器のセット
execute on passengers run data modify entity @s[tag=Shop.Minecart.SetItemNow] Items set from entity @s data.Weapons
# 戻るボタンのセット
data modify entity @s[tag=Shop.Minecart.SetItemNow] Items append value {Slot:17b,Count:1b,id:"minecraft:barrier",tag:{ShopItem:true,display:{Name:'[{"translate":"RPG.MSG.BackOp"}]'}}}

tag @s remove Minecart.Shop.InitDisplay
tag @s add Minecart.Shop.WeaponDisplay

#それぞれに表示をセット(#TODOあとでmodifierを)