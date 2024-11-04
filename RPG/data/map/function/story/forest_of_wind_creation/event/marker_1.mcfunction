data merge storage core:message {title:'{"text":"村"}',msg:'["",{"text":"村では村人から話を聞くことが出来たりアイテムを購入することが出来ます"},"\\n",{"text":"村人を見かけたら話しかけてみましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 200 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1