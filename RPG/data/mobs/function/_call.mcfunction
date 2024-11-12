#モブ召喚時の共通処理

effect give @s resistance infinite 4 true
#interactionを乗せる
## サイズを取り出す
summon interaction ~ ~ ~ {height:-1.7,width:1.0,Tags:["LowPl"]}
summon interaction ~ ~ ~ {height:0.8,width:1.0,Tags:["HighPl"]}



# 上に乗せる
ride @e[type=interaction,tag=!Init,tag=LowPl,limit=1,sort=nearest] mount @s
# 幅の取得
# データが存在すれば代入
execute if data storage mobs:hit Width on passengers run data modify entity @s width set from storage mobs:hit Width
execute if data storage mobs:hit LowPlHeight on passengers run data modify entity @s height set from storage mobs:hit LowPlHeight
execute on passengers run tag @s add Init

# 上に乗せる
execute on passengers run ride @e[type=interaction,tag=!Init,limit=1,sort=nearest,tag=HighPl] mount @s
# 幅の取得
# データが存在すれば代入
execute if data storage mobs:hit Width on passengers on passengers run data modify entity @s width set from storage mobs:hit Width
execute if data storage mobs:hit HighPlHeight on passengers on passengers run data modify entity @s height set from storage mobs:hit HighPlHeight
execute on passengers on passengers run tag @s add Init

# 引数の削除
data remove storage mobs:hit Width
data remove storage mobs:hit LowPlHeight
data remove storage mobs:hit HighPlHeight