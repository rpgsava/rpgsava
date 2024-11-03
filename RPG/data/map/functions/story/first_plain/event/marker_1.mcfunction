data merge storage core:message {title:'{"text":"ようこそ"}',msg:'["",{"text":"これはこの世界における最初のストーリーです"},"\\n",{"text":"この世界でのすごし方を知りましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 0 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1