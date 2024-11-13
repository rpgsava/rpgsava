
execute if score @s Map.Story.Now matches 500..599 if block ~ ~ ~ end_gateway unless entity @a[tag=Boss.Ended.MistcrestLake] run function map:story/mistcrest_lake/event/boss_1
execute if score @s Map.Story.Now matches 500..599 if block ~ ~ ~ end_gateway if entity @a[tag=Boss.Ended.MistcrestLake] if score @s Map.Boss.CanStart = $True Core.Bool run function boss:access/cant