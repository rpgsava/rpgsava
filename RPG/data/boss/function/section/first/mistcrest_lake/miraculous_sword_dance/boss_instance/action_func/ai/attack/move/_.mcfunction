# 移動
tp ^ ^ ^0.8

# ヒット判定
execute positioned ~-1 ~-1 ~-1 as @a[dz=2,dx=2,dy=2] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/move/hit

# 最後まで当たらなかったら
execute unless block ~ ~ ~ air run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/move/end