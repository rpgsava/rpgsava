data merge entity @s {block_state:{Name:"red_stained_glass"}}
data merge entity @s {transformation:{right_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},scale:[7.0f,0.1f,-70.0f],left_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},translation:[-3.0f,0.0f,0.0f]}}

tag @s add mistcrestLakeBoss.miraculousSwordDance.swordDance
tag @s add mistcrestLakeBoss.miraculousSwordDance.swordDance.safeZone
tag @s add mistcrestLakeBoss.miraculousSwordDance.Enemy

# 座標を編集
data modify entity @s Pos[1] set value 0.1
execute store result entity @s Pos[0] double 1 run scoreboard players get $swordXPosition Boss.mistcrestLakeBoss.miraculousSwordDance