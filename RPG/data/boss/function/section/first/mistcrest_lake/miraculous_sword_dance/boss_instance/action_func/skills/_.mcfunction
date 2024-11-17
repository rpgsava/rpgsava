
# 0-200tickで演出する(200tick時に読み込みに成功していれば100tickに飛ばす 成功していなければ199tickに飛ぶ)
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 0..200 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/openning/_

# 当たり判定の設定
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 999 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/set_collision

# とりあえず1000ティックまで待つことにする。

# 1000ティック目になんかいい感じに抽選する 
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/skill/rand
# 乱数が0なら
execute if score $skill_rand Boss.mistcrestLakeBoss.miraculousSwordDance = $0 Core.Int if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000..1399 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/_
# 乱数が1なら
execute if score $skill_rand Boss.mistcrestLakeBoss.miraculousSwordDance = $1 Core.Int if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000..1399 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/embers_of_flame/_
# 乱数が2なら
execute if score $skill_rand Boss.mistcrestLakeBoss.miraculousSwordDance = $2 Core.Int if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000..1399 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/wind_law_sword/_


scoreboard players add $mistcrestLakeBoss.miraculousSwordDance Boss.Tick 1
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick >= $1400 Core.Int run scoreboard players operation $mistcrestLakeBoss.miraculousSwordDance Boss.Tick = $1000 Core.Int