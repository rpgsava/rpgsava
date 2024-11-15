# もし現状プレイヤーがいなければFalseをセットする
execute unless entity @a[tag=Boss.MistcrestLake.MiraculousSwordDance] run scoreboard players operation $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $False Core.Bool
# Falseであって、かつボスがいるならキルする
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $False Core.Bool as @e[tag=mistcrestLakeBoss.miraculousSwordDance] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/death

# ボスが存在していないか、hpが50%以上ならcallする
execute if score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance >= $needHpRatioForJoin Boss.mistcrestLakeBoss.miraculousSwordDance run function map:story/mistcrest_lake/event/boss/boss_1/calling
execute unless entity @e[tag=mistcrestLakeBoss.miraculousSwordDance] run function map:story/mistcrest_lake/event/boss/boss_1/calling
