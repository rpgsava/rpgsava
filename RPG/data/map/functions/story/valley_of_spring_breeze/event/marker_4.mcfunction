data merge storage core:message {title:'{"text":"ストーリーを見返す"}',msg:'["",{"text":"ストーリーエリアに再度入場した場合最後ストーリーを再生することができます"},"\\n",{"text":"但し、ストーリーは順序以外の再生を受け付けないためテレポートによる開始を推奨します"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 103 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1