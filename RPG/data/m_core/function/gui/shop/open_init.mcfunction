#開いたときに変更する内容の記述
data modify entity @s Items set from storage core:shop init.Items
#初期タグを付与して他を削除
tag @s add Minecart.Shop.InitDisplay
tag @s remove Minecart.Shop.WeaponDisplay
tag @s remove Minecart.Shop.ArmorDisplay
tag @s remove Minecart.Shop.FruitDisplay
tag @s remove Minecart.Shop.OtherDisplay