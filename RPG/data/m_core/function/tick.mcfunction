scoreboard players add $WorldTime Core.Time 1
scoreboard players operation $WorldTime%20 Core.Time = $WorldTime Core.Time 
scoreboard players operation $WorldTime%20 Core.Time %= $20 Core.Int


#SHOP GUI用のトロッコが既に召喚されていて、SHOP用の村人を見ていなければトロッコを除去する処理
execute as @a if score @s Core.Shop.IsSummonMinecart matches 1 unless predicate map:villager/shop run function m_core:gui/shop/delete_cart
#アクションバー
execute as @a run function m_core:actionbar/_check
#LVアップチェック
execute as @a at @s run function m_core:lv/_check

#ダメージ表示の削除
execute as @e[type=item,tag=DmgDisplay] if data entity @s {PortalCooldown:0} run kill @s

#worldtickの加算
scoreboard players add $WorldTick Core.World.Tick 1