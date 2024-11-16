# 近くにプレイヤーがいないのであれば、前に進める
execute if score $isCommonAttacking Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/move

# 攻撃モードなら攻撃をする
execute if score $isCommonAttacking Boss.mistcrestLakeBoss.miraculousSwordDance matches 1 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/_tick

# もし近くにプレイヤーがいれば攻撃modeに切り替える
execute if score $isCommonAttacking Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 if entity @a[distance=..2] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/_change_to_attack