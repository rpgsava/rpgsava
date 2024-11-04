data merge storage core:message {title:'{"text":"マップ"}',msg:'["",{"text":"このワールドのマップは異常を起こさないため出来る限り移動できる範囲を制限しています"},"\\n",{"text":"また、意図していない移動にも出来る限り対応できるように作成されています"},"\\n",{"text":"ですが、これは抜けがないことを保証するものではありません"},"\\n",{"text":"意図的に抜けを利用しデータが破損した場合対応できません"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 102 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1