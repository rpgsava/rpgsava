#このモブに関する行動

#! declare HateRange = 32

# 移動AI
## HateRangeより近くの敵を見ながら移動関数を呼び出し
execute facing entity @a[distance=..32,sort=nearest, limit = 1] eyes run function mobs:forest_of_tree_shadows/scattered_bockle/action_func/move


#return
execute if entity @s[tag=NoAI] run return 0
