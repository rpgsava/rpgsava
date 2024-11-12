#ディリティリオ
execute at @e[tag=forestOfTreeShadowsBossDarkElf] summon armor_stand run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/dilithirio/call

#particle
execute at @a[tag=Boss.ForestOfTreeShadows.DarkElf] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/dilithirio_paticle/dilithirio
#sound
execute at @a[tag=Boss.ForestOfTreeShadows.DarkElf] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/sound/dilithirio/dilithirio_sound


scoreboard players set $forestOfTreeShadowsBossDarkElf Boss.TickCount 30000
scoreboard players set @e[type=minecraft:armor_stand,tag=forestOfTreeShadows.DarkElfBoss.dilithirio] Mobs.Attack.Damage 1

#tagを持った人にtpさせ~ 12 ~に移動させる
execute at @a[tag=Boss.ForestOfTreeShadows.DarkElf] as @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio] run tp @s[tag=forestOfTreeShadows.DarkElfBoss.dilithirio] @a[tag=Boss.ForestOfTreeShadows.DarkElf,sort=random,limit=1]
execute at @a[tag=Boss.ForestOfTreeShadows.DarkElf] as @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio] run tp ~ 12 ~ 
execute as @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/dilithirio/new_tags



