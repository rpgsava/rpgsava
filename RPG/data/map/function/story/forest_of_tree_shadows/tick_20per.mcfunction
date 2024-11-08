
#現在の数を計測
execute store result score $forest_of_tree_shadows.scattered_bockle Map.Area.NowNumberOfMobs if entity @e[tag=forestOfTreeShadowsScatteredBockle]

#現在の数が2以下で50M以内にプレイヤーが存在しているならモブを新たにスポーンさせる
# scatterd_bockle
    execute if score $forest_of_tree_shadows.scattered_bockle Map.Area.NowNumberOfMobs matches ..10 as @e[tag=EnemyMarker.ForestOfTreeShadowsScatteredBockle,sort=random,distance=..50] at @s unless entity @e[tag=forestOfTreeShadowsScatteredBockle,distance=..15] run function map:story/forest_of_tree_shadows/_spawn/scattered_bockle

#既に沸いているモブの周囲50mにプレイヤーがいないならデスポーンさせる
execute as @e[tag=forestOfTreeShadowsEnemy] at @s unless entity @a[distance=..50] run function map:story/forest_of_tree_shadows/event/despawn