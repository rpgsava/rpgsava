# tp @s @a[tag=Shop.Practitioner,limit=1]

execute as @a[tag=Shop.Practitioner] at @s positioned ~ ~1.2 ~ run tp @e[type=chest_minecart,tag=Minecart.Shop] ^ ^ ^0.41
# execute at @s run tp @s ^ ^ ^0.4 ~ 0

#クリックを検知
execute store result score @s Core.Shop.IsClickItem run clear @a[tag=Shop.Practitioner,limit=1] #m_core:shop_item[custom_data={ShopItem: true}]
execute if entity @s[tag=Minecart.Shop.WeaponDisplay] if score @s Core.Shop.IsClickItem matches 1.. store result score $Return Core.System.Input run function m_core:gui/shop/item_click/give_weapon
execute if entity @s[tag=Minecart.Shop.ArmorDisplay] if score @s Core.Shop.IsClickItem matches 1.. store result score $Return Core.System.Input run function m_core:gui/shop/item_click/give_armor
execute if entity @s[tag=Minecart.Shop.FruitDisplay] if score @s Core.Shop.IsClickItem matches 1.. store result score $Return Core.System.Input run function m_core:gui/shop/item_click/give_fruit
execute if entity @s[tag=Minecart.Shop.OtherDisplay] if score @s Core.Shop.IsClickItem matches 1.. store result score $Return Core.System.Input run function m_core:gui/shop/item_click/give_other
execute if entity @s[tag=Minecart.Shop.InitDisplay] if score @s Core.Shop.IsClickItem matches 1.. run function m_core:gui/shop/item_click/_

execute if score $Return Core.System.Input matches -2 run data modify entity @s Items append value {Slot:16b,count:1b,id:"minecraft:red_stained_glass",components:{custom_data: {ShopItem:true},display:{Name:'[{"translate":"RPG.Shop.NoSpace"}]'}}}

scoreboard players reset $Return Core.System.Input