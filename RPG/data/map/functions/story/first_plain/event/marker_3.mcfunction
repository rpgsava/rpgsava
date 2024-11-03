data merge storage core:message {title:'{"text":"戦闘"}',msg:'["",{"text":"ストーリーでは戦闘タスクが開始されることがあります"},"\\n",{"text":"落ち着いて対処しましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 2 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1