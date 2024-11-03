data merge storage core:message {title:'{"text":"ボスとの戦闘"}',msg:'["",{"text":"ストーリーエリアではボスとの戦闘が発生することがあります"},{"text":"ボスとの戦闘には失敗条件が設定されていることが多く、失敗条件を満たすまでは戦闘が継続されます"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 13 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1