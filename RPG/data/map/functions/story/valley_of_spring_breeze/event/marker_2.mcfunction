data merge storage core:message {title:'{"text":"エメラルド"}',msg:'["",{"text":"もうお気づきかもしれれませんがストーリー上のエメラルドは順番通りにアクセスする必要があります"},"\\n",{"text":"これは、物語の順序がおかしくならないようにするためです"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 101 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1