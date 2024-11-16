# 手の状態を初期化
execute if score $commonAttackTime Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 on passengers on passengers run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/hand/init

# 31tickになったら、剣を横に振る
execute if score $commonAttackTime Boss.mistcrestLakeBoss.miraculousSwordDance matches 31 on passengers on passengers run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/hand/sweep

# 37になったら元に戻す
execute if score $commonAttackTime Boss.mistcrestLakeBoss.miraculousSwordDance matches 37 on passengers on passengers run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/hand/end


scoreboard players add $commonAttackTime Boss.mistcrestLakeBoss.miraculousSwordDance 1
execute if score $commonAttackTime Boss.mistcrestLakeBoss.miraculousSwordDance >= $40 Core.Int run scoreboard players set $isCommonAttacking Boss.mistcrestLakeBoss.miraculousSwordDance 0