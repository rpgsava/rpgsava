
tag @s add Delete.Shop
execute as @e[tag=Minecart.Shop] if score @s Core.PlayerId = @a[tag=Delete.Shop,limit=1] Core.PlayerId run function m_core:gui/shop/delete_cart_kill
tag @s remove Delete.Shop
scoreboard players set @s Core.Shop.IsSummonMinecart 0