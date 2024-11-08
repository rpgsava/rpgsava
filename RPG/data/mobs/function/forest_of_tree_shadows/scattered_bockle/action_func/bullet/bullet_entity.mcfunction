rotate @s facing entity @p
rotate @s ~ ~-2
# itemに対して飛ぶ方向を設定する
scoreboard players set @s MK.v.VecValue 1
function milib:vector/_
# 自身を拾えないようにする
data merge entity @s {PickupDelay:1000000000}

# ダメージ値の設定
scoreboard players set @s Mobs.Attack.Damage 15

tag @s add Init