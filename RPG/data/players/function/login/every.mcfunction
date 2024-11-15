scoreboard players set @s Players.Login.LeaveCheck 0

# ボスに対して増加させた量をリセットする
scoreboard players reset @s Players.Boss.AppendHealth

execute if entity @s[tag=Boss] in map:rpg_map run function boss:logout/_check
execute if entity @s[tag=Boss.Ended] in map:rpg_map run function boss:logout/_check