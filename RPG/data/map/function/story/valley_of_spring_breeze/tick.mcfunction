# execute if score @s Map.Teleport.IsViewTeleport = $True Core.Bool if entity @e[type=marker,tag=Teleport.ValleyOfSpringBreeze.1,distance=..5] run function map:story/valley_of_spring_breeze/event/teleport_1 

execute if score @s Map.Story.Now matches 100 if entity @e[type=item_display,tag=Story.ValleyOfSpringBreeze.1,distance = ..5] run function map:story/valley_of_spring_breeze/event/marker_1
execute if score @s Map.Story.Now matches 101 if entity @e[type=item_display,tag=Story.ValleyOfSpringBreeze.2,distance = ..5] run function map:story/valley_of_spring_breeze/event/marker_2
execute if score @s Map.Story.Now matches 102 if entity @e[type=item_display,tag=Story.ValleyOfSpringBreeze.3,distance = ..5] run function map:story/valley_of_spring_breeze/event/marker_3
execute if score @s Map.Story.Now matches 103 if entity @e[type=item_display,tag=Story.ValleyOfSpringBreeze.4,distance = ..5] run function map:story/valley_of_spring_breeze/event/marker_4
execute if score @s Map.Story.Now matches 104 if entity @e[type=item_display,tag=Story.ValleyOfSpringBreeze.5,distance = ..5] run function map:story/valley_of_spring_breeze/event/marker_5
execute if score @s Map.Story.Now matches 105 if entity @e[type=item_display,tag=Story.ValleyOfSpringBreeze.6,distance = ..5] run function map:story/valley_of_spring_breeze/event/marker_6