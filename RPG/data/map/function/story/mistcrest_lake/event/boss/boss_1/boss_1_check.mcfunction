
execute unless entity @a[tag=Boss.Ended.MistcrestLake] if score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance >= $needHpRatioForJoin Boss.mistcrestLakeBoss.miraculousSwordDance run function map:story/mistcrest_lake/event/boss/boss_1/_
# hpが足りなければ
execute unless entity @a[tag=Boss.Ended.MistcrestLake] unless score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance >= $needHpRatioForJoin Boss.mistcrestLakeBoss.miraculousSwordDance if score @s Map.Boss.CanStart = $True Core.Bool run function map:story/mistcrest_lake/event/boss/boss_1/hp_err_arg
# ボスが終了していれば
execute if entity @a[tag=Boss.Ended.MistcrestLake] if score @s Map.Boss.CanStart = $True Core.Bool run function boss:access/cant