particle totem_of_undying ~ ~ ~ 2 0 2 1 50
playsound entity.player.attack.sweep ambient @a ~ ~ ~ 2 0
tag @a[distance=..5] add Mobs.Command.Attacked
function mobs:_damage/_mobs_to_player_command