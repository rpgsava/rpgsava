data merge storage core:message {title:'{"text":"死亡"}',msg:'["",{"text":"このワールドで死亡するとコインの10%と次のLvまでの経験値をロストします"},{"text":"難易度には注意しましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 11 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1