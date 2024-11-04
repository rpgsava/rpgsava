
# execute if score @s Map.Teleport.IsViewTeleport = $True Core.Bool if entity @e[type=item_display,tag=Teleporter.FirstPlains.1,distance=..5] run function map:story/_marker/do_teleport/access

execute if score @s Map.Story.Now matches 0 if entity @e[type=item_display,tag=Story.FirstPlains.1,distance = ..5] run function map:story/first_plain/event/marker_1
execute if score @s Map.Story.Now matches 1 if entity @e[type=item_display,tag=Story.FirstPlains.2,distance = ..5] run function map:story/first_plain/event/marker_2
execute if score @s Map.Story.Now matches 2 if entity @e[type=item_display,tag=Story.FirstPlains.3,distance = ..5] run function map:story/first_plain/event/marker_3
execute if score @s Map.Story.Now matches 3 if entity @e[type=item_display,tag=Story.FirstPlains.4,distance = ..5] run function map:story/first_plain/event/marker_4
execute if score @s Map.Story.Now matches 4 if entity @e[type=item_display,tag=Story.FirstPlains.5,distance = ..5] run function map:story/first_plain/event/marker_5
execute if score @s Map.Story.Now matches 5 if entity @e[type=item_display,tag=Story.FirstPlains.6,distance = ..5] run function map:story/first_plain/event/marker_6
execute if score @s Map.Story.Now matches 6 if entity @e[type=item_display,tag=Story.FirstPlains.7,distance = ..5] run function map:story/first_plain/event/marker_7
execute if score @s Map.Story.Now matches 7 if entity @e[type=item_display,tag=Story.FirstPlains.8,distance = ..5] run function map:story/first_plain/event/marker_8
execute if score @s Map.Story.Now matches 8 if entity @e[type=item_display,tag=Story.FirstPlains.9,distance = ..5] run function map:story/first_plain/event/marker_9
execute if score @s Map.Story.Now matches 9 if entity @e[type=item_display,tag=Story.FirstPlains.10,distance = ..5] run function map:story/first_plain/event/marker_10
execute if score @s Map.Story.Now matches 10 if entity @e[type=item_display,tag=Story.FirstPlains.11,distance = ..5] run function map:story/first_plain/event/marker_11
execute if score @s Map.Story.Now matches 11 if entity @e[type=item_display,tag=Story.FirstPlains.12,distance = ..5] run function map:story/first_plain/event/marker_12
execute if score @s Map.Story.Now matches 12 if entity @e[type=item_display,tag=Story.FirstPlains.13,distance = ..5] run function map:story/first_plain/event/marker_13
execute if score @s Map.Story.Now matches 13 if entity @e[type=item_display,tag=Story.FirstPlains.14,distance = ..5] run function map:story/first_plain/event/marker_14
execute if score @s Map.Story.Now matches 14 if entity @e[type=item_display,tag=Boss.FirstPlains.1,distance = ..5] unless entity @a[tag=Boss.Ended.FirstPlains] run function map:story/first_plain/event/boss_1
execute if score @s Map.Story.Now matches 14 if entity @e[type=item_display,tag=Boss.FirstPlains.1,distance = ..5] if entity @a[tag=Boss.Ended.FirstPlains] if score @s Map.Boss.CanStart = $True Core.Bool run function boss:access/cant