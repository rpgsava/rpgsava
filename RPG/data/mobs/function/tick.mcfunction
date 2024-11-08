execute if entity @e[tag=firstPlainEnemy] run function mobs:first_plain/tick
execute if entity @e[tag=ValleyOfSpringBreezeZombie] run function mobs:valley_of_spring_breeze/tick
execute if entity @e[tag=forestOfTreeShadowsEnemy] run function mobs:forest_of_tree_shadows/tick

execute as @e[type=text_display,tag=RewordDisplay] run function mobs:view_plate/time