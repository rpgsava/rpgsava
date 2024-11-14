# 剣舞
execute if score @s Map.Story.Now matches 500..599 if entity @e[type=item_display,tag=Boss.MistcrestLake.1,distance = ..5] if block ~ ~ ~ end_gateway run function map:story/mistcrest_lake/event/boss/boss_1/boss_1_check
