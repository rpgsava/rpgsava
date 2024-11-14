# ダメージ判定
execute as @e[tag=mistcrestLakeBoss.miraculousSwordDance.windLawSword.Armor] at @s positioned ^ ^ ^3 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/hit

kill @e[tag=mistcrestLakeBoss.miraculousSwordDance.windLawSword]

# aiを戻す
scoreboard players set $noAI Boss.mistcrestLakeBoss.miraculousSwordDance 0