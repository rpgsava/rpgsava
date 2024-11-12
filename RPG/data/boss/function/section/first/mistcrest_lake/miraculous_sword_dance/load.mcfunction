#もし、まだボスがいなければボスをスポーンさせる
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $False Core.Bool run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/call
#もしそうでなければHPの最大値と現在値を計算する
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $True Core.Bool as @e[tag=Boss,tag=mistcrestLakeBoss.miraculousSwordDance] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/calc_health
#スポーンしたことにする
scoreboard players operation $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $True Core.Bool

#自身にボスバーが見えるようにする
bossbar set boss:story/mistcrestlake.miraculous_sword_dance players @s