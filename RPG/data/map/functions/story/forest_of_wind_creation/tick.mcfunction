#20tickに一回実行
execute if score $WorldTime%20 Core.Time matches 0 run function map:story/forest_of_wind_creation/tick_20per

#villegerを見た時
execute if predicate map:villager/shop run function map:story/forest_of_wind_creation/event/open_shop

execute if score @s Map.Story.Now matches 200 if entity @e[type=item_display,tag=Story.ForestOfWindCreation.1,distance = ..5] run function map:story/forest_of_wind_creation/event/marker_1