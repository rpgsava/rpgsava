#プレイヤーの方向を向く
rotate @s facing entity @p eyes


# motionの強さ
scoreboard players set @s MK.v.VecValue 1
scoreboard players set @s MK.v.offsetY 4
# motionを代入
function milib:vector/_