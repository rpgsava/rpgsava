tag @s add mistcrestLakeBoss.miraculousSwordDance.windLawSword
tag @s add mistcrestLakeBoss.miraculousSwordDance.windLawSword.Armor
tag @s add mistcrestLakeBoss.miraculousSwordDance.Enemy

data merge entity @s {Invulnerable:1b,Invisible:1b}

scoreboard players operation @s Mobs.Attack.Damage = $attackDamage.windLawSword.lastHit Boss.mistcrestLakeBoss.miraculousSwordDance

execute summon item_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/swords_nbt/sword

tag @s add Init


execute store result entity @s Rotation[0] float 1 run scoreboard players get $WindLawSword.Rotation Boss.mistcrestLakeBoss.miraculousSwordDance

# 次の剣用に30上昇させる
scoreboard players add $WindLawSword.Rotation Boss.mistcrestLakeBoss.miraculousSwordDance 60