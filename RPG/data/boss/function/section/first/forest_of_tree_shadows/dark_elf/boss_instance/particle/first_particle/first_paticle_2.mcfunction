
execute as @e[tag=forestOfTreeShadowsBossDarkElf,sort=nearest,limit=1] at @s run particle minecraft:entity_effect{color:[0.0,80.0,0.0,1.0]} ~ ~ ~ 0 50 0 0.1 5000 normal
execute as @e[tag=forestOfTreeShadowsBossDarkElf,sort=nearest,limit=1] at @s run particle minecraft:sneeze ~ ~ ~ 0.2 50 0.2 0 2000 force

# execute if entity @p[scores={TimeCount=25}] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/first_paticle/first_paticle_3