
data merge storage core:message {title:'{"text":"テレポート"}',msg:'["",{"text":"前に見えているものがテレポータです"},{"text":"このテレポーターの半径5m以内に入るとアクセスすることができます"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 7 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1