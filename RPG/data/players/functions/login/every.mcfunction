scoreboard players set @s Players.Login.LeaveCheck 0

execute if entity @s[tag=Boss] in map:rpg_map run function boss:logout/_check
execute if entity @s[tag=Boss.Ended] in map:rpg_map run function boss:logout/_check