# 現在のtickを計算
## 自分自身のtickを計算する
scoreboard players operation $CurrentTick Mobs.Tick = $WorldTick Core.World.Tick
## uuidを減算する
scoreboard players operation $CurrentTick Mobs.Tick -= @s Mobs.Uuid_0
## 30でmodする
scoreboard players operation $CurrentTick Mobs.Tick %= $50 Core.Int


#0なら前に飛ぶ
execute if score @s Mobs.Tick matches 0 run function mobs:forest_of_tree_shadows/scattered_bockle/action_func/forward/_