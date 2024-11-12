execute as @a[tag=Boss.ForestOfTreeShadows.DarkElf] run tag @s add Mobs.Command.Attacked
execute as @e[type=armor_stand,tag=forestOfTreeShadows.DarkElfBoss.dilithirio] run function mobs:_damage/_mobs_to_player_command
execute as @e[type=armor_stand,tag=forestOfTreeShadows.DarkElfBoss.dilithirio.2] run function mobs:_damage/_mobs_to_player_command