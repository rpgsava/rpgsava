# > as at boss

# tick loopを100tickに切り分けそれをスキルループとして扱う
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance = $mistcrestLakeBoss.miraculousSwordDance Boss.Tick
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance %= $50 Core.Int

# 0なら飛ぶ先と飛ぶもとにmarkerを召喚しておく
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/init

# 1なら軌道を表示(飛ぶ先と飛ぶもとにmarkerを召喚しておく)
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 3 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/beam/_

# 30なら実体を召喚
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 30 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/sword/summon

# 33-49なら実体を動かしヒット判定をする。
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 39 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/sword/teleport

# 49ならキル判定 + ダメージ判定
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 49 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/kill