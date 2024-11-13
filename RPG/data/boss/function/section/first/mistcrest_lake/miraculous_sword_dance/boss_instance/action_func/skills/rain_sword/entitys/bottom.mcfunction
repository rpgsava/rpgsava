
# 一点からもう一点に対して線を引く
data merge entity @s {Tags:["mistcrestLakeBoss.miraculousSwordDance.rainSword.Bottom","mistcrestLakeBoss.miraculousSwordDance.rainSword"],item:{id:"minecraft:warped_fungus_on_a_stick",count:1b,components:{custom_model_data:2002}}}
# scaleを4にする
data merge entity @s {transformation:{right_rotation:{angle:0f,axis:[0f,1f,0f]},scale:[8f,1f,8f],left_rotation:{angle:0f,axis:[0f,1f,0f]},translation:[0f,0f,0f]}}

#-25から25を抽選する
execute store result score $rain_posx Boss.mistcrestLakeBoss.miraculousSwordDance run random value -25..25 10001
execute store result score $rain_posz Boss.mistcrestLakeBoss.miraculousSwordDance run random value -25..25 10001

# この値が半径25の範囲に収まっているかを検証
# c = sqrt(x ** 2 + y ** 2) |  c <= r(25)なら内側より
# c ** 2 = x ** 2 + y ** 2  |  c ** 2 <= 25 ** 2
scoreboard players operation $rain_posx**2 Boss.mistcrestLakeBoss.miraculousSwordDance = $rain_posx Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players operation $rain_posz**2 Boss.mistcrestLakeBoss.miraculousSwordDance = $rain_posz Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players operation $rain_posx**2 Boss.mistcrestLakeBoss.miraculousSwordDance *= $rain_posx**2 Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players operation $rain_posz**2 Boss.mistcrestLakeBoss.miraculousSwordDance *= $rain_posz**2 Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players operation $rain_posc Boss.mistcrestLakeBoss.miraculousSwordDance = $rain_posx**2 Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players operation $rain_posc Boss.mistcrestLakeBoss.miraculousSwordDance += $rain_posz**2 Boss.mistcrestLakeBoss.miraculousSwordDance

# この値が半径25の範囲に収まっているかを検証
# 収まっていないなら自身をキル
execute if score $rain_posc Boss.mistcrestLakeBoss.miraculousSwordDance matches 625.. run kill @s


# 収まっていたのであれば、座標を更新 + top召喚
execute unless score $rain_posc Boss.mistcrestLakeBoss.miraculousSwordDance matches 625.. run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/entitys/valid_pos
