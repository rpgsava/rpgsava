data merge storage core:message {title:'{"text":"経験値"}',msg:'["",{"text":"敵を倒すことで様々な種類の経験値を増加させることができます"},{"text":"経験値を得ることで基礎ステータスを強化しましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 5 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1