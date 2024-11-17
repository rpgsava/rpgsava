#それぞれのプレイヤーが持つボスへ与えたhealthと現在のmax_healthに相違がないかをチェックする(相違があった場合はその人の分max_healthを減算し、減算した比率に応じてhpも減算する)
function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/remove_health/_

# ボスバーへ代入
execute store result bossbar boss:story/mistcrestlake.miraculous_sword_dance value run scoreboard players get @s Mobs.Health.Now
scoreboard players operation $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance = @s Mobs.Health.Now
scoreboard players operation $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance *= $100 Core.Int
scoreboard players operation $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance /= @s Mobs.Health.Max


# 今のところ常時歩かせる
execute unless score $noAI Boss.mistcrestLakeBoss.miraculousSwordDance matches 1 on vehicle on vehicle on vehicle on vehicle on vehicle run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/_

# ボスの方向をプレイヤーに
execute on vehicle on vehicle on vehicle on vehicle on vehicle facing entity @p feet run rotate @s ~ 0
execute as @e[tag=mistcrestLakeBoss.miraculousSwordDance.bodyDisplay] facing entity @p feet run rotate @s ~ 0

# - 進捗進行 -------------------------------------------------

# 49%以下で、通常スキル中であれば防御力をカンストさせる
execute if score $progress Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 unless score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000 if score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance <= $49 Core.Int run scoreboard players set @s Mobs.Defence 2147483
# 49%以下でスキルを開始するタイミングの時progressを1進め、分岐を変更
execute if score $progress Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000 if score $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance <= $49 Core.Int run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/progress/_to_1
# 1のフェーズに入っていて1フェーズの内容をすべて終えていたら
execute if score $progress Boss.mistcrestLakeBoss.miraculousSwordDance matches 1 if score $loop.swordDance Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/progress/_to_2

# - 通常攻撃処理 ----------------------------------------------

execute as @e[tag=mistcrestLakeBoss.miraculousSwordDance.commonAttack.display] at @s run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/move/_

# - スキル処理 ------------------------------------------

# 最初の場面では普通にスキル処理
execute if score $progress Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/_

# 場面が進んだ際(~49%)に、モーション移動(フィールド外に飛び出して剣を7発づつ打ち出す)
execute if score $progress Boss.mistcrestLakeBoss.miraculousSwordDance matches 1 if score $loop.swordDance Boss.mistcrestLakeBoss.miraculousSwordDance matches 1.. run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/_