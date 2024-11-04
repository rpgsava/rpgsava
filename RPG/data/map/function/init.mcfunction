scoreboard players set @s Map.Story.Progress 0
scoreboard players set @s Map.Story.Now 0
#入りなおすたびにやり直すことを有効にする
scoreboard players operation @s Map.Story.IsReplay = $True Core.Bool

execute in map:rpg_map run tp @s 0 5 0 100 0

tag @s add Story.FirstPlains
tag @s add Story

#場所名の表示許可
scoreboard players operation @s Map.Teleport.IsViewTeleport = $True Core.Bool