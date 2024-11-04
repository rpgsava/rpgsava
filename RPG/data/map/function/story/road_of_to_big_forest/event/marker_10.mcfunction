data merge storage core:message {msg:'["",{"translate":"RPG.Talk.RoadOfToBigForest.10"}]'}
function m_core:message/story

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 309 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1