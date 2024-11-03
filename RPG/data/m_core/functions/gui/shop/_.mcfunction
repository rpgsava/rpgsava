
tag @s add Shop.Practitioner

# もし話しかけた回数が1以上ならチャットを流す
execute if score @s Map.Story.TalkVillager matches 1.. run function m_core:gui/shop/so_fast_err
# ショップタグを持った村人を見た時自分の周りにsummon 
scoreboard players operation $tmp Core.PlayerId = @s Core.PlayerId
##既に同一のplayeridを持ったminecartがいるなら召喚しない
execute if score @s Core.Shop.IsSummonMinecart matches 0 positioned ~ ~1.2 ~ summon chest_minecart run function m_core:gui/shop/summon_minecart

# プレイヤーに対してminecartをteleportし、ショップのクリックを判定
execute as @e[type=chest_minecart,tag=Minecart.Shop] at @s if score @s Core.PlayerId = @a[tag=Shop.Practitioner,limit=1] Core.PlayerId run function m_core:gui/shop/tick

tag @s remove Shop.Practitioner
