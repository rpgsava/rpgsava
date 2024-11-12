#上に上がる動き
execute as @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio.2] at @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio.2] run tp ~ ~1 ~ 

execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 30014 run scoreboard players set $forestOfTreeShadowsBossDarkElf forestOfTreeShadowsBoss.dilithirio 0 
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 30014 as @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio.2] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/dilithirio/new_tags_

execute at @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio.2] positioned ~-0.7 ~-3 ~-0.7 as @a[dy=5,dx=-0.3,dz=-0.3] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/dilithirio/dilithirio_dagame