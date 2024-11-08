#操作する必要のある関数
    #> function map:forest_of_tree_shadows/init/set_marker
    #> function map:forest_of_tree_shadows/tick
    #> function map:forest_of_tree_shadows/event/*
    #> function map:input/teleport/section/first/tp/3
    #> function map:input/teleport/section/first/choise
    #> function map:player_pos_check/place/valley_of_spring_breeze


## スタート地点とストーリーフラグの設置


#プレイヤー検知用マーカー
# kill @e[tag=PlayerMarker.ForestOfWindCreation.1]
# data merge storage map:story {Tags:["PlayerMarker.ForestOfWindCreation.1","PlayerMarker.Place","PlayerMarker.ForestOfWindCreation"]}
# execute positioned -133.5 -8 -214.5 summon marker run function map:story/_marker/place_getter
# kill @e[tag=PlayerMarker.ForestOfWindCreation.2]
# data merge storage map:story {Tags:["PlayerMarker.ForestOfWindCreation.2","PlayerMarker.Place","PlayerMarker.ForestOfWindCreation"]}
# execute positioned 106.5 -8 -381.5 summon marker run function map:story/_marker/place_getter

#敵のスポーンマーカー
kill @e[tag=EnemyMarker.ForestOfTreeShadowsScatteredBockle]
data merge storage map:story {Tags:["EnemyMarker.ForestOfTreeShadowsScatteredBockle.1","EnemyMarker.Place","EnemyMarker.ForestOfTreeShadowsScatteredBockle"]}
execute positioned -30.5 17 -811.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfTreeShadowsScatteredBockle.2","EnemyMarker.Place","EnemyMarker.ForestOfTreeShadowsScatteredBockle"]}
execute positioned -57.5 17 -812.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfTreeShadowsScatteredBockle.3","EnemyMarker.Place","EnemyMarker.ForestOfTreeShadowsScatteredBockle"]}
execute positioned -92.5 16 -828.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfTreeShadowsScatteredBockle.4","EnemyMarker.Place","EnemyMarker.ForestOfTreeShadowsScatteredBockle"]}
execute positioned -116.5 19 -804.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfTreeShadowsScatteredBockle.5","EnemyMarker.Place","EnemyMarker.ForestOfTreeShadowsScatteredBockle"]}
execute positioned -99.5 18 -865.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfTreeShadowsScatteredBockle.6","EnemyMarker.Place","EnemyMarker.ForestOfTreeShadowsScatteredBockle"]}
execute positioned 2.5 19 -835.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfTreeShadowsScatteredBockle.7","EnemyMarker.Place","EnemyMarker.ForestOfTreeShadowsScatteredBockle"]}
execute positioned -161.5 20 -814.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfTreeShadowsScatteredBockle.8","EnemyMarker.Place","EnemyMarker.ForestOfTreeShadowsScatteredBockle"]}
execute positioned -88.5 18 -762.5 summon marker run function map:story/_marker/field_enemy_point