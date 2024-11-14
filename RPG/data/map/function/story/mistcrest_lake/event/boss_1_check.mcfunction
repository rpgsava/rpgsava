
execute unless entity @a[tag=Boss.Ended.MistcrestLake] if score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance >= $50 Core.Int run function map:story/mistcrest_lake/event/boss_1
# hpが足りなければ
execute unless entity @a[tag=Boss.Ended.MistcrestLake] unless score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance >= $50 Core.Int if score @s Map.Boss.CanStart = $True Core.Bool run function boss:access/low_hp
# ボスが終了していれば
execute if entity @a[tag=Boss.Ended.MistcrestLake] if score @s Map.Boss.CanStart = $True Core.Bool run function boss:access/cant