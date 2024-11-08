rotate @s facing entity @p
rotate @s ~ ~-2
# itemに対して飛ぶ方向を設定する
scoreboard players set @s MK.v.VecValue 1
function milib:vector/_
tag @s add Init