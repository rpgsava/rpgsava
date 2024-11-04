data merge storage core:message {title:'{"text":"エメラルド"}',msg:'["",{"text":"エメラルドを順にたどることで話を進めることができます"},"\\n",{"text":"近いものから順にたどりましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 1 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1