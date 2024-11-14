# > as at boss

# tick loopを100tickに切り分けそれをスキルループとして扱う
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance = $mistcrestLakeBoss.miraculousSwordDance Boss.Tick
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance %= $200 Core.Int
scoreboard players operation $skill_loop%20 Boss.mistcrestLakeBoss.miraculousSwordDance = $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players operation $skill_loop%20 Boss.mistcrestLakeBoss.miraculousSwordDance %= $20 Core.Int

# 周りの剣を召喚
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/init

# 0- 150tickの間回転する( + 攻撃判定)
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 0..149 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/rotate/_

#150tickになったら剣を飛ばす( + noAI解除)
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 150 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/launch/_

# 最後に削除
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 190 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/end
