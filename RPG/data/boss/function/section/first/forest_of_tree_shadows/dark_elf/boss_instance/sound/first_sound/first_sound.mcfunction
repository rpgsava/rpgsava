execute at @e[tag=forestOfTreeShadowsBossDarkElf,sort=nearest,limit=1] run playsound minecraft:entity.wind_charge.wind_burst master rakito00 ~ ~ ~ 1 1
execute at @e[tag=forestOfTreeShadowsBossDarkElf,sort=nearest,limit=1] run playsound minecraft:block.end_portal.spawn master rakito00 ~ ~ ~ 1 1

#登場演出は1~1000
scoreboard players set $forestOfTreeShadowsBossDarkElf Boss.TickCount 1000