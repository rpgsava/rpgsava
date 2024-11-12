#ボスバーへの代入
execute store result bossbar boss:story/forestoftreeshadows/arc value run scoreboard players get @s Mobs.Health.Now
#return
execute if entity @s[tag=NoAI] run return 0




scoreboard players add $forestOfTreeShadowsBossDarkElf Boss.TickCount 1
#登場演出
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 5 run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/first_paticle/first_paticle_2
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 10 run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/first_paticle/first_paticle_3

#tyfonas
execute as @e[tag=forestOfTreeShadows.DarkElfBoss.TyfonasPhantom,type=phantom] at @s run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/tyfonas/_tick

#tmesis
execute as @e[tag=forestOfTreeShadows.DarkElfBoss.tmesis,type=armor_stand] at @s run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/tmesis/_tick_1


#to do
#dilithirio
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 30010.. as @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio.2,type=armor_stand] at @s run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/dilithirio/_tick
execute as @e[tag=forestOfTreeShadows.DarkElfBoss.dilithirio.3,type=armor_stand] at @s run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/dilithirio/_tick_

#ripi
function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/ripi/_tick

#zephyros
execute as @e[tag=forestOfTreeShadowsBossDarkElf.zephyros] at @s run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/zephyros/_tick
#このモブに関する行動
