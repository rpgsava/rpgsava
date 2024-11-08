rotate @s facing entity @p
rotate @s ~ ~-2
# itemに対して飛ぶ方向を設定する
scoreboard players set @s MK.v.VecValue 1
function milib:vector/_
# 自身を拾えないようにする

# 透明にする
data merge entity @s {Invisible:true}

# ダメージ値の設定
scoreboard players set @s Mobs.Attack.Damage 3

tag @s add Init