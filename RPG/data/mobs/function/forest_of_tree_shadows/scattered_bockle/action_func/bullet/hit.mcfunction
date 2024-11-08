execute as @a[distance=..1] run tag @s add Mobs.Command.Attacked
function mobs:_damage/_mobs_to_player_command
# 自身を削除
kill @s