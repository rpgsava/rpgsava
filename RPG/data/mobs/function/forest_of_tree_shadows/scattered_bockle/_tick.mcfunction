#このモブに関する行動

#! declare HateRange = 32

# 移動AI
## ヘイト範囲に敵がいたらAIを動かす
execute if entity @a[distance=..32] facing entity @p eyes run function mobs:forest_of_tree_shadows/scattered_bockle/action_func/ai