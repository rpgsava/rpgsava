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

#このモブに関する行動