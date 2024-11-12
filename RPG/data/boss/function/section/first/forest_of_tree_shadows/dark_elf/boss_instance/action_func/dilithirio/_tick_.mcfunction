
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 30100 run kill @s[tag=forestOfTreeShadows.DarkElfBoss.dilithirio.3]
execute positioned ~-0.7 ~-3 ~-0.7 as @a[dy=7,dx=-0.3,dz=-0.3] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/dilithirio/dilithirio_dagame
