#操作する必要のある関数
    #> function map:forest_of_wind/init/set_marker
    #> function map:forest_of_wind/tick
    #> function map:forest_of_wind/event/*
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

#テレポート開始地点
kill @e[tag=Teleporter.ForestOfWindCreation.1]
data merge storage map:story {Tags:["Teleporter.ForestOfWindCreation.1","Teleport.Place"]}
execute positioned -96.5 6 -318.5 summon item_display run function map:story/_marker/teleport_point

#ストーリーマーカー
kill @e[tag=Story.ForestOfWindCreation.1]
data merge storage map:story {Tags:["Story.ForestOfWindCreation.1","Story"]}
execute positioned -82.5 6 -311.5 summon item_display run function map:story/_marker/init

#敵のスポーンマーカー
kill @e[tag=EnemyMarker.ForestOfWindCreation]
data merge storage map:story {Tags:["EnemyMarker.ForestOfWindCreation.1","EnemyMarker.Place","EnemyMarker.ForestOfWindCreation"]}
execute positioned -69.5 9 -264.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfWindCreation.2","EnemyMarker.Place","EnemyMarker.ForestOfWindCreation"]}
execute positioned -49.5 7 -325.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfWindCreation.3","EnemyMarker.Place","EnemyMarker.ForestOfWindCreation"]}
execute positioned -25.5 7 -311.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfWindCreation.4","EnemyMarker.Place","EnemyMarker.ForestOfWindCreation"]}
execute positioned -29.5 4 -268.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfWindCreation.5","EnemyMarker.Place","EnemyMarker.ForestOfWindCreation"]}
execute positioned -7.5 3 -252.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfWindCreation.6","EnemyMarker.Place","EnemyMarker.ForestOfWindCreation"]}
execute positioned 11.5 4 -299.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfWindCreation.7","EnemyMarker.Place","EnemyMarker.ForestOfWindCreation"]}
execute positioned 60.5 3 -289.5 summon marker run function map:story/_marker/field_enemy_point
data merge storage map:story {Tags:["EnemyMarker.ForestOfWindCreation.8","EnemyMarker.Place","EnemyMarker.ForestOfWindCreation"]}
execute positioned 39.5 1 -253.5 summon marker run function map:story/_marker/field_enemy_point

#shopの召喚
kill @e[tag=Villager.ForestOfWindCreation]
data merge storage map:story {Tags:["Villager.Shop","Villager.ForestOfWindCreation","Villager.ForestOfWindCreation.Shop"],Rotation:[90.0f,15.0f]}
execute positioned -91.5 6.1875 -311.5 summon villager run function map:story/_marker/villager_point