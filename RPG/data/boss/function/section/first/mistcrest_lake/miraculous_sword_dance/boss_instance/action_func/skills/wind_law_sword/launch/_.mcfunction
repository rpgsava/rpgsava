execute as @e[tag=mistcrestLakeBoss.miraculousSwordDance.windLawSword.Armor] at @s rotated ~ ~ run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/launch/store

particle sweep_attack ~ ~ ~ 2 2 2 1 300
playsound entity.wind_charge.wind_burst ambient @a ~ ~ ~ 2 0

# aiを戻す
scoreboard players set $noAI Boss.mistcrestLakeBoss.miraculousSwordDance 0