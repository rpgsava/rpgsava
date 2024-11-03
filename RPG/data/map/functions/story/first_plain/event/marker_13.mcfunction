data merge storage core:message {title:'{"text":"Mana"}',msg:'["",{"text":"一部の武器や魔法は攻撃時にmanaを消費します"},{"text":"manaは時間とともに回復しますが回復速度には注意しましょう"}]'}
function m_core:message/tutorial

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 12 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1