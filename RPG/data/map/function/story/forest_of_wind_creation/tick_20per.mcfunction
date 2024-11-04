
#現在の数を計測
execute store result score $forest_of_wind_creation Map.Area.NowNumberOfMobs if entity @e[tag=forestOfWindCreationEnemy]

#現在の数が2以下で50M以内にプレイヤーが存在しているならモブを新たにスポーンさせる
execute if score $forest_of_wind_creation Map.Area.NowNumberOfMobs matches ..18 as @e[tag=EnemyMarker.ForestOfWindCreation,sort=random,distance=..50] at @s unless entity @e[tag=forestOfWindCreationEnemy,distance=..15] run function map:story/forest_of_wind_creation/_spawn

#既に沸いているモブの周囲50mにプレイヤーがいないならデスポーンさせる
execute as @e[tag=forestOfWindCreationEnemy] at @s unless entity @a[distance=..50] run function map:story/forest_of_wind_creation/event/despawn