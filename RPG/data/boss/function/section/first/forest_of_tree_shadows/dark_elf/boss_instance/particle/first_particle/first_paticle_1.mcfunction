
execute as @e[tag=forestOfTreeShadowsBossDarkElf,sort=nearest,limit=1] at @s run particle minecraft:sonic_boom ~ ~ ~ 0 50 0 1 200 force

# execute if entity @p[scores={TimeCount=10}] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/first_paticle/first_paticle_2