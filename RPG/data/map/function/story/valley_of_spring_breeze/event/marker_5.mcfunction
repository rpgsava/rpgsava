execute as @e[type=item_display,tag=Story.ValleyOfSpringBreeze.5,distance=..10] at @s run function mobs:first_plain/zombies/call
execute as @e[type=item_display,tag=Story.ValleyOfSpringBreeze.5,distance=..10] at @s run function mobs:first_plain/zombies/call

data merge storage core:message {msg:'["",{"storage":"mobs:entity","nbt":"CustomName","interpret":true}]'}
function m_core:message/buttle

#ストーリーの最前線を進める
execute if score @s Map.Story.Progress matches 104 run scoreboard players add @s Map.Story.Progress 1
scoreboard players add @s Map.Story.Now 1