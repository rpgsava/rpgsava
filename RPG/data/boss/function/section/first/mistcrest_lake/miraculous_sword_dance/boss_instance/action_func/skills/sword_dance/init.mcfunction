scoreboard players set $noAI Boss.mistcrestLakeBoss.miraculousSwordDance 1
execute on vehicle on vehicle on vehicle on vehicle on vehicle run data merge entity @s {NoGravity:true}
execute on vehicle on vehicle on vehicle on vehicle on vehicle run tp @s 25000.5 10 30035.5
# 最初の剣の位置
scoreboard players set $swordXPosition Boss.mistcrestLakeBoss.miraculousSwordDance 24979
# 剣をスキップする位置を決める
execute store result score $skipXPosition Boss.mistcrestLakeBoss.miraculousSwordDance run random value 0..6