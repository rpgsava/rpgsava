#もし、まだボスがいなければボスをスポーンさせる
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $False Core.Bool run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/call
#もしそうでなければHPの最大値と現在値を計算する(hp比が足りてなければ拒否)
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $True Core.Bool if score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance >= $needHpRatioForJoin Boss.mistcrestLakeBoss.miraculousSwordDance as @e[tag=Boss,tag=mistcrestLakeBoss.miraculousSwordDance] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/calc_health
#hpが足りないが、ボスと戦闘しているプレイヤーがいないなら
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $True Core.Bool if score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance < $needHpRatioForJoin Boss.mistcrestLakeBoss.miraculousSwordDance unless entity @a[tag=Boss.MistcrestLake.MiraculousSwordDance] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/re_instance

#スポーンしたことにする
scoreboard players operation $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $True Core.Bool

#自身にボスバーが見えるようにする
bossbar set boss:story/mistcrestlake.miraculous_sword_dance players @s

#todo hpが50%以下になってログインして返ってこないパターンを考える