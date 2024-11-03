#3マス上に表示する
execute store result score @s Map.Story.Pos.Y run data get entity @s Pos[1]
scoreboard players operation @s Map.Story.Pos.Y += $3 Core.Int
execute store result entity @s Pos[1] double 1 run scoreboard players get @s Map.Story.Pos.Y 

data merge entity @s {item:{id:"minecraft:emerald",Count:1b},billboard:"vertical",brightness:{block:15,sky:15},shadow_radius:0,Glowing:true,glow_color_override:1090560,view_range:0.25f}
data modify entity @s Tags set from storage map:story Tags