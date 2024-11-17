data merge entity @s {item:{id:"iron_sword",count:1b},Rotation:[180.0f,0.0f]}
data merge entity @s {transformation:{right_rotation:{angle:1.55f,axis:[1.0f,0f,0.0f]},scale:[2.0f,2.0f,2.0f],left_rotation:{angle:0.75f,axis:[0.0f,1.0f,0.0f]},translation:[0.0f,0.0f,0.0f]}}

# 発光
effect give @s glowing infinite 1 true

tag @s add mistcrestLakeBoss.miraculousSwordDance.swordDance
tag @s add mistcrestLakeBoss.miraculousSwordDance.swordDance.throwSword
tag @s add mistcrestLakeBoss.miraculousSwordDance.Enemy

# ダメージセット
scoreboard players operation @s Mobs.Attack.Damage = $attackDamage.swordDance.Hit Boss.mistcrestLakeBoss.miraculousSwordDance

# 座標を編集
data modify entity @s Pos[1] set value 1.0
execute store result entity @s Pos[0] double 1 run scoreboard players get $swordXPosition Boss.mistcrestLakeBoss.miraculousSwordDance
