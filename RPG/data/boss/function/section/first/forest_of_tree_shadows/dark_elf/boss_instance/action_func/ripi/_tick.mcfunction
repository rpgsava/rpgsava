execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40006 as @a[tag=Boss.ForestOfTreeShadows.DarkElf] run attribute @s gravity modifier remove forest_of_tree_shadows_boss_darkelf


execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40010 at @e[tag=forestOfTreeShadowsBossDarkElf] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/ripi/particle_armor_stand
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40004 as @e[tag=forestOfTreeShadows.boss.darkelf.ripi] at @s run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/ripi/slime
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40007 run tp @e[tag=forestOfTreeShadows.boss.darkelf.slime] @e[tag=forestOfTreeShadowsBossDarkElf,limit=1]
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40060 run tp @e[tag=forestOfTreeShadows.boss.darkelf.slime] ~ -128 ~ ~ ~ 
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40030 run kill @e[tag=forestOfTreeShadows.boss.darkelf.particle]
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40040 run kill @e[tag=forestOfTreeShadows.boss.darkelf.ripi]
#particle
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40010 at @e[tag=forestOfTreeShadows.boss.darkelf.particle] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/ripi_particle/ripi_particle
#sound
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 40010 at @e[tag=forestOfTreeShadowsBossDarkElf] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/sound/ripi_sound/ripi_sound