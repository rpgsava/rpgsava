#反転
scoreboard players reset $tmp Map.Story.IsReplay
execute if score @s Map.Story.IsReplay = $True Core.Bool run scoreboard players set $tmp Map.Story.IsReplay 1
execute if score @s Map.Story.IsReplay = $False Core.Bool run scoreboard players operation @s Map.Story.IsReplay = $True Core.Bool
execute if score $tmp Map.Story.IsReplay matches 1 run scoreboard players operation @s Map.Story.IsReplay = $False Core.Bool

#もしストーリーの再度再生をoffにしたならnowにprogressを入れる
execute if score @s Map.Story.IsReplay = $False Core.Bool run scoreboard players operation @s Map.Story.Now = @s Map.Story.Progress

execute if score @s Map.Story.IsReplay = $True Core.Bool run data merge storage core:message {msg:'[{"text":"ストーリを再度再生するように変更しました"}]'}
execute if score @s Map.Story.IsReplay = $False Core.Bool run data merge storage core:message {msg:'[{"text":"ストーリを再度再生しないように変更しました"}]'}
function m_core:message/system