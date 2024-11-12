# 今のところ常時歩かせる
function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/move

# とりあえず1000ティックまで待つことにする。

# 1000ティック目になんかいい感じに抽選する
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/skill/rand
# 乱数が0なら
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000..2000 if score $skill_rand Boss.mistcrestLakeBoss.miraculousSwordDance = $0 Core.Int run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/_

scoreboard players add $mistcrestLakeBoss.miraculousSwordDance Boss.Tick 1