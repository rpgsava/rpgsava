# 座標を乱数で決定
    ## [x,y,z]からx,zを取得
    execute store result score $X Mobs.Place.Random run data get entity @s Pos[0]
    execute store result score $Y Mobs.Place.Random run data get entity @s Pos[2]
    ## 0.1単位で計算したいので
    scoreboard players operation $X Mobs.Place.Random *= $10 Core.Int
    scoreboard players operation $Y Mobs.Place.Random *= $10 Core.Int
    ## 乱数による座標生成
        ## 乱数を生成
        execute store result score $randX Mobs.Place.Random run random value -30..30
        ## 乱数を加算後3を引いて座標を算出
        scoreboard players operation $X Mobs.Place.Random += $randX Mobs.Place.Random
        ## 乱数を生成
        execute store result score $randY Mobs.Place.Random run random value -30..30
        ## 乱数を加算後3を引いて座標を算出
        scoreboard players operation $Y Mobs.Place.Random += $randY Mobs.Place.Random
    ## 座標代入及びタグの決定
    execute store result entity @s Pos[0] double 0.1 run scoreboard players get $X Mobs.Place.Random
    execute store result entity @s Pos[2] double 0.1 run scoreboard players get $Y Mobs.Place.Random