tag @s add mistcrestLakeBoss.miraculousSwordDance.windLawSword
tag @s add mistcrestLakeBoss.miraculousSwordDance.windLawSword.itemDisplay

data merge entity @s {item:{id:"iron_sword",count:1b}}
data merge entity @s {transformation:{right_rotation:{angle:2.35f,axis:[0.0f,0.0f,1.0f]},scale:[2f,2f,2f],left_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},translation:[0.0f,-0.5f,3.0f]},Rotation:[0.0f,0.0f]}


execute store result entity @s Rotation[0] float 1 run scoreboard players get $WindLawSword.Rotation Boss.mistcrestLakeBoss.miraculousSwordDance

ride @s mount @n[tag=mistcrestLakeBoss.miraculousSwordDance.windLawSword.Armor,tag=!Init]