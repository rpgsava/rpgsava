# 今のところ常時歩かせる
function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/move

rotate @s facing entity @p feet

# とりあえず1000ティックまで待つことにする。

# 1000ティック目になんかいい感じに抽選する 
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/skill/rand
# 乱数が0なら
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000..2000 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/_

scoreboard players add $mistcrestLakeBoss.miraculousSwordDance Boss.Tick 1
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick >= $2000 Core.Int run scoreboard players operation $mistcrestLakeBoss.miraculousSwordDance Boss.Tick = $1000 Core.Int
