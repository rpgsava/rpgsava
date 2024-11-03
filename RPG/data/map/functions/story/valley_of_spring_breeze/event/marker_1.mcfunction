data merge storage core:message {title:'{"text":"さぁ、始めましょう"}',msg:'["",{"text":"いよいよ冒険の始まりです"},"\\n",{"text":"ここではチュートリアルの最後として注意事項を記載します"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 100 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1