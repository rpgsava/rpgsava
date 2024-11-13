# tick loopを100tickに切り分けそれをスキルループとして扱う
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance = $mistcrestLakeBoss.miraculousSwordDance Boss.Tick
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance %= $200 Core.Int


# 170なら飛ぶ先と飛ぶもとにmarkerを召喚しておく
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 0..170 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/embers_of_flame/put_fire

# 199なら🔥を削除
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 199 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/field_ending/delete_embers_of_flame/_
