data merge entity @s {transformation:{right_rotation:{angle:0f,axis:[0f,1f,0f]},scale:[0.1f,0.1f,0f],left_rotation:{angle:0f,axis:[0f,1f,0f]},translation:[0f,0f,0f]},interpolation_duration:0}
data merge entity @s {Tags:["mistcrestLakeBoss.miraculousSwordDance.rainSword.Top","mistcrestLakeBoss.miraculousSwordDance.rainSword","mistcrestLakeBoss.miraculousSwordDance.Enemy"],block_state:{Name:"minecraft:orange_stained_glass"}}

# posをランダムで決める
# 直でやってて汚いけど
## -25~25の範囲で領域を決める
## そこからボスフィールドの中心座標にずらす
execute store result score $rain_posx_top Boss.mistcrestLakeBoss.miraculousSwordDance run random value -5..5 10001
execute store result score $rain_posz_top Boss.mistcrestLakeBoss.miraculousSwordDance run random value -5..5 10001



# 自身に代入
execute store result entity @s Pos[0] double 1 run scoreboard players operation $rain_posx_top Boss.mistcrestLakeBoss.miraculousSwordDance += $rain_posx Boss.mistcrestLakeBoss.miraculousSwordDance
data modify entity @s Pos[1] set value 20.0
execute store result entity @s Pos[2] double 1 run scoreboard players operation $rain_posz_top Boss.mistcrestLakeBoss.miraculousSwordDance += $rain_posz Boss.mistcrestLakeBoss.miraculousSwordDance


# 自分たちを結びつける
function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/tie_entity

scoreboard players reset $rain_posx_top Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players reset $rain_posz_top Boss.mistcrestLakeBoss.miraculousSwordDance