# 現在のtickを計算
## 自分自身のtickを計算する
scoreboard players operation @s Mobs.Tick = $WorldTime Core.Time
## uuidを減算する
scoreboard players operation @s Mobs.Tick -= @s Mobs.Uuid_0
## 50でmodする
scoreboard players operation @s Mobs.Tick %= $50 Core.Int


#0なら前に飛ぶ
execute if score @s Mobs.Tick matches 0 run function mobs:forest_of_tree_shadows/scattered_bockle/action_func/forward/_

#20なら攻撃をする
execute if score @s Mobs.Tick matches 20 run function mobs:forest_of_tree_shadows/scattered_bockle/action_func/bullet/_