# 抽選
execute store result score $skill_rand Boss.mistcrestLakeBoss.miraculousSwordDance run random value 0..2 10001
# 乱数が0...ならメッセージを表示
execute if score $skill_rand Boss.mistcrestLakeBoss.miraculousSwordDance = $0 Core.Int run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/msg
execute if score $skill_rand Boss.mistcrestLakeBoss.miraculousSwordDance = $1 Core.Int run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/.../msg
execute if score $skill_rand Boss.mistcrestLakeBoss.miraculousSwordDance = $2 Core.Int run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/.../msg