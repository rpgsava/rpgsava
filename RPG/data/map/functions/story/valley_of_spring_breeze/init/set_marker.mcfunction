## スタート地点とストーリーフラグの設置


#プレイヤー検知用マーカー
# kill @e[tag=PlayerMarker.ValleyOfSpringBreeze.1]
# data merge storage map:story {Tags:["PlayerMarker.ValleyOfSpringBreeze.1","PlayerMarker.Place","PlayerMarker.ValleyOfSpringBreeze"]}
# execute positioned 73.5 -8 -32.5 summon marker run function map:story/_marker/place_getter
# kill @e[tag=PlayerMarker.ValleyOfSpringBreeze.2]
# data merge storage map:story {Tags:["PlayerMarker.ValleyOfSpringBreeze.2","PlayerMarker.Place","PlayerMarker.ValleyOfSpringBreeze"]}
# execute positioned 63.5 -8 -145.5 summon marker run function map:story/_marker/place_getter


kill @e[tag=Story.ValleyOfSpringBreeze.1]
data merge storage map:story {Tags:["Story.ValleyOfSpringBreeze.1","Story"]}
execute positioned 41.5 12 -70.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.ValleyOfSpringBreeze.2]
data merge storage map:story {Tags:["Story.ValleyOfSpringBreeze.2","Story"]}
execute positioned 39.5 12 -84.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.ValleyOfSpringBreeze.3]
data merge storage map:story {Tags:["Story.ValleyOfSpringBreeze.3","Story"]}
execute positioned 32.5 12 -100.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.ValleyOfSpringBreeze.4]
data merge storage map:story {Tags:["Story.ValleyOfSpringBreeze.4","Story"]}
execute positioned 25.5 12 -115.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.ValleyOfSpringBreeze.5]
data merge storage map:story {Tags:["Story.ValleyOfSpringBreeze.5","Story"]}
execute positioned 9.5 12 -137.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.ValleyOfSpringBreeze.6]
data merge storage map:story {Tags:["Story.ValleyOfSpringBreeze.6","Story"]}
execute positioned -7.5 12 -150.5 summon item_display run function map:story/_marker/init