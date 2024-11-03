data merge storage core:message {title:'{"text":"ストーリーエリア"}',msg:'["",{"text":"また、ストーリーエリアと呼ばれるエリアも存在します"},{"text":"経験値やコインを稼ぎ住人と取引をしましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 10 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1