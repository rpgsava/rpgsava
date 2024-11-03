#ボスバーへの代入
execute store result bossbar boss:story/firstplains value run scoreboard players get @s Mobs.Health.Now

#このモブに関する行動



#return
execute if entity @s[tag=NoAI] run return 0
