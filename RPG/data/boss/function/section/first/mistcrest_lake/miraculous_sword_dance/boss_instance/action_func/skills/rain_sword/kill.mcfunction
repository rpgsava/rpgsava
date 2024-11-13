execute as @e[tag=mistcrestLakeBoss.miraculousSwordDance.rainSword.Bottom] at @s if entity @a[distance=..4] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/hit

execute at @e[tag=mistcrestLakeBoss.miraculousSwordDance.rainSword.Bottom] run particle glow ~ ~ ~ 2 0 2 1 40

kill @e[tag=mistcrestLakeBoss.miraculousSwordDance.rainSword]