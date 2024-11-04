data merge storage core:message {title:'{"text":"最初の一歩"}',msg:'["",{"text":"橋を渡れば最初の探索エリアです"},"\\n",{"text":"貴方の旅路が良いものでありますように GL"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 105 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1