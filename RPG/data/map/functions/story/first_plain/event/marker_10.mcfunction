
data merge storage core:message {title:'{"text":"探索エリア"}',msg:'["",{"text":"この世界には探索エリアと呼ばれるエリアがあります"},{"text":"経験値やコインを稼ぎ住人と取引をしましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 9 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1