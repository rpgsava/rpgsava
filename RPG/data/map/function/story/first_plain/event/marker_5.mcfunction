data merge storage core:message {title:'{"text":"コイン"}',msg:'["",{"text":"敵を倒すなどの行動をするとコインを入手できます"},{"text":"コインを集めることで新たな武器や防具・素材などと交換することができます"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 4 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1