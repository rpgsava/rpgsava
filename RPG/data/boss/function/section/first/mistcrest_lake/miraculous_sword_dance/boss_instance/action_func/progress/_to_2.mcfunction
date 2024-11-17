scoreboard players set $progress Boss.mistcrestLakeBoss.miraculousSwordDance 2
# 防御を戻す
scoreboard players operation @s Mobs.Defence = $defence Boss.mistcrestLakeBoss.miraculousSwordDance

# ステータスを戻す
scoreboard players set $noAI Boss.mistcrestLakeBoss.miraculousSwordDance 0
execute on vehicle on vehicle on vehicle on vehicle on vehicle run data merge entity @s {NoGravity:false}
execute on vehicle on vehicle on vehicle on vehicle on vehicle run tp @s 25000.5 2 30000.5