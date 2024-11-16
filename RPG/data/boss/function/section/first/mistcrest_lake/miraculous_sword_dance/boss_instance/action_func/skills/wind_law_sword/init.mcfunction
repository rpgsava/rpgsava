# 動きを止める
execute on vehicle on vehicle on vehicle on vehicle on vehicle run data merge entity @s {Motion:[0.0f,0.0f,0.0f]}
# aiを消す
scoreboard players set $noAI Boss.mistcrestLakeBoss.miraculousSwordDance 1
# 自身の場所に剣のパーティクルを出現
scoreboard players set $WindLawSword.Rotation Boss.mistcrestLakeBoss.miraculousSwordDance 0
execute summon armor_stand run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/swords_nbt/_
execute summon armor_stand run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/swords_nbt/_
execute summon armor_stand run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/swords_nbt/_
execute summon armor_stand run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/swords_nbt/_
execute summon armor_stand run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/swords_nbt/_
execute summon armor_stand run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/swords_nbt/_

scoreboard players reset $WindLawSword.Rotation Boss.mistcrestLakeBoss.miraculousSwordDance