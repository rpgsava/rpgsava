# tick loopを100tickに切り分けそれをスキルループとして扱う
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance = $mistcrestLakeBoss.miraculousSwordDance Boss.Tick
scoreboard players operation $mistcrestLakeBoss.miraculousSwordDance Boss.Tick %= $50 Core.Int

# 0なら軌道を表示(飛ぶ先と飛ぶもとにmarkerを召喚しておく)
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/init

# 30なら実体を召喚

# 30-50なら実体を動かしヒット判定をする。