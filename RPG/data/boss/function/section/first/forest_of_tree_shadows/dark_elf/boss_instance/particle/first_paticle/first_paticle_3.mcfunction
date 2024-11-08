execute as @e[tag=forestOfTreeShadowsBossDarkElf,sort=nearest,limit=3] at @s run particle minecraft:flash ~ ~ ~ 0.6 0 1.2 0.1 4 force
execute as @e[tag=forestOfTreeShadowsBossDarkElf,sort=nearest,limit=1] at @s run particle minecraft:entity_effect{color:[0.0,40.0,0.0,1.0]} ~ ~ ~ 2 50 2 1 100 normal
execute as @e[tag=forestOfTreeShadowsBossDarkElf,sort=nearest,limit=1] at @s run particle minecraft:sneeze ~ ~ ~ 0 50 0 4 2000 force

function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/sound/first_sound.mcfunction/first_sound