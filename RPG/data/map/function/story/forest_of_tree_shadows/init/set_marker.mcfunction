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


#ストーリーマーカー
kill @e[tag=Story.ForestOfTreeShadows.1]
data merge storage map:story {Tags:["Story.ForestOfTreeShadows.1","Story"]}
execute positioned 25152 17 25041 summon item_display run function map:story/_marker/init

#敵のスポーンマーカー


#shopの召喚
