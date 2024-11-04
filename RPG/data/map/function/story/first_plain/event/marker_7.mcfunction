
data merge storage core:message {title:'{"text":"攻撃力"}',msg:'["",{"text":"本ワールドでの攻撃力は記載が無い限り連打による減衰がありません"},{"text":"また特殊アイテムや防具などで変動することもあります"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 6 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1