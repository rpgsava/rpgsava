particle dust 0 0.702 1 0 ~ ~ ~ 0.5 0.5 0.5 2 50
playsound entity.enderman.teleport master @s ~ ~ ~ 2 1
#テレポーターにアクセスする権利
scoreboard players operation @s Map.Teleport.IsViewTeleport = $True Core.Bool
#テレポーター以外の場所でテレポート不可に
tag @s remove ForceTeleport
#ボス終了後のtpである可能性があるので
function boss:remove_all_ended_tag