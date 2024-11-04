data modify storage stdout: Pos set from entity @s Pos
execute store result score $0 StdOut.Temp run data get storage stdout: Pos[0] 10
execute store result score $1 StdOut.Temp run data get storage stdout: Pos[1] 10
execute store result score $2 StdOut.Temp run data get storage stdout: Pos[2] 10
execute store result storage stdout: Pos[0] double 0.1 run scoreboard players get $0 StdOut.Temp
execute store result storage stdout: Pos[1] double 0.1 run scoreboard players get $1 StdOut.Temp
execute store result storage stdout: Pos[2] double 0.1 run scoreboard players get $2 StdOut.Temp

tellraw @s [{"text":"","color": "yellow"},{"text":"["},{"selector":"@s"},{"text":"'s NowPos(x,y,z)]"},{"translate":"%1$s","with":[{"nbt":"Pos","storage":"stdout:"}],"color": "aqua"}]