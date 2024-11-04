
data merge storage core:message {title:'{"text":"テレポート"}',msg:'["",{"text":"今回はまだ未解放のためテレポートは出来ません"},{"text":"テレポータを使用すると任意の場所の初期地点に降り立つことができます"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 8 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1