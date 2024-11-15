# もし現状プレイヤーがいなければFalseをセットする
execute unless entity @a[tag=Boss.MistcrestLake.MiraculousSwordDance] run scoreboard players operation $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $False Core.Bool
# Falseであって、かつボスがいるならキルする
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $False Core.Bool as @e[tag=mistcrestLakeBoss.miraculousSwordDance] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/death
# タグを付与
tag @s add Boss
tag @s add Boss.MistcrestLake.MiraculousSwordDance
# いい感じの場所にする
tp @s 25000 12 30000 0 0

#ボスの召喚
execute in map:rpg_map positioned 25000 12 30000 rotated 180 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/load