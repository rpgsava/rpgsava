# 何から始めたらいいかわからんのでとりあえず前に進めてみる

scoreboard players set @s MK.v.VecValue 350
scoreboard players set @s MK.v.OffsetY -500000
function milib:mili_vector/_

execute if score $commonMoveTick Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/move_part/start
execute if score $commonMoveTick Boss.mistcrestLakeBoss.miraculousSwordDance matches 7 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/move_part/end

scoreboard players add $commonMoveTick Boss.mistcrestLakeBoss.miraculousSwordDance 1
execute if score $commonMoveTick Boss.mistcrestLakeBoss.miraculousSwordDance >= $14 Core.Int run scoreboard players set $commonMoveTick Boss.mistcrestLakeBoss.miraculousSwordDance 0