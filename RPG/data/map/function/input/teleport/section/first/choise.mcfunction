#現在のストーリーの最後の番号よりも先に進んでいれば can_teleport[セクション][フィールド番号]
execute store result score $tmp Map.Story.Progress run data get storage map:story/progress can_teleport[0][0]
# tellraw @a [{"score":{"objective": "Map.Story.Progress","name":"$tmp"}},{"text":" : "},{"score":{"objective": "Map.Story.Progress","name":"@s"}}]
execute if score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place.FirstPlains","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 101"},"color":"green"}]'}
execute unless score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place.FirstPlains","bold":true,"color":"gray"}]'}
function map:input/teleport/place_msg

execute store result score $tmp Map.Story.Progress run data get storage map:story/progress can_teleport[0][1]
execute if score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place.ValleyOfSpringBreeze","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 102"},"color":"green"}]'}
execute unless score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place.ValleyOfSpringBreeze","bold":true,"color":"gray"}]'}
function map:input/teleport/place_msg

execute store result score $tmp Map.Story.Progress run data get storage map:story/progress can_teleport[0][2]
execute if score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place.ForestOfWindCreation","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 103"},"color":"green"}]'}
execute unless score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place.ForestOfWindCreation","bold":true,"color":"gray"}]'}
function map:input/teleport/place_msg

execute store result score $tmp Map.Story.Progress run data get storage map:story/progress can_teleport[0][3]
execute if score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 104"},"color":"green"}]'}
execute unless score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place","bold":true,"color":"gray"}]'}
function map:input/teleport/place_msg

execute store result score $tmp Map.Story.Progress run data get storage map:story/progress can_teleport[0][4]
execute if score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 105"},"color":"green"}]'}
execute unless score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place","bold":true,"color":"gray"}]'}
function map:input/teleport/place_msg

execute store result score $tmp Map.Story.Progress run data get storage map:story/progress can_teleport[0][5]
execute if score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 106"},"color":"green"}]'}
execute unless score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place","bold":true,"color":"gray"}]'}
function map:input/teleport/place_msg

execute store result score $tmp Map.Story.Progress run data get storage map:story/progress can_teleport[0][6]
execute if score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 107"},"color":"green"}]'}
execute unless score @s Map.Story.Progress >= $tmp Map.Story.Progress run data merge storage map:msg {field:'[{"translate": "RPG.Place","bold":true,"color":"gray"}]'}
function map:input/teleport/place_msg