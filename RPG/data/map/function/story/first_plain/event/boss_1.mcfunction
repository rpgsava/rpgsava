tag @s add Boss
tag @s add Boss.FirstPlains
tp @s 18.5 12 -35.5 0 0

data merge storage core:message {title:'{"text":"戦闘後"}',msg:'["",{"text":"ボスとの戦闘後は30秒以内にテレポートで抜け出しましょう"},"\\n",{"text":"他の人が戦闘する可能性があります"}]'}
function m_core:message/tutorial

#ボスの召喚
execute in map:rpg_map positioned 18.5 12 -29.5 rotated 180 0 run function boss:section/first/first_plains/load