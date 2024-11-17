# tickが0だったら、AI削除/NoGravity付与/ポジション変更/穴あき場所の抽選を行う
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1000 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/init

# 汚い気もするけど10tickごとに剣を召喚
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1050 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/summon
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1055 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/summon
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1060 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/summon
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1065 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/summon
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1070 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/summon
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1075 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/summon
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1080 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/summon

# 120tickで武器を飛ばし始める
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1120..1142 as @e[tag=mistcrestLakeBoss.miraculousSwordDance.swordDance.throwSword] at @s run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/sword/move

scoreboard players add $mistcrestLakeBoss.miraculousSwordDance Boss.Tick 1


# 160tickでループ処理/終了処理
execute if score $mistcrestLakeBoss.miraculousSwordDance Boss.Tick matches 1160 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/loop