#3マス上に表示する
execute store result score @s Map.Story.Pos.Y run data get entity @s Pos[1]
scoreboard players operation @s Map.Story.Pos.Y += $3 Core.Int
execute store result entity @s Pos[1] double 1 run scoreboard players get @s Map.Story.Pos.Y 

data merge entity @s {item:{id:"minecraft:red_dye",Count:1b},billboard:"vertical",brightness:15,shadow_radius:0,Glowing:true,glow_color_override:13107200,view_range:0.25}
data modify entity @s Tags set from storage map:story Tags

# item replace entity @s armor.chest with leather_helmet{display:{color:13107200}}