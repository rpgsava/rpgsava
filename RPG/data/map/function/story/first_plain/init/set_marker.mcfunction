## スタート地点とストーリーフラグの設置

#プレイヤー検知用マーカー
# kill @e[tag=PlayerMarker.FirstPlains.1]
# data merge storage map:story {Tags:["PlayerMarker.FirstPlains.1","PlayerMarker.Place","PlayerMarker.FirstPlains"]}
# execute positioned 25.5 -8 25.5 summon marker run function map:story/_marker/place_getter
# kill @e[tag=PlayerMarker.FirstPlains.2]
# data merge storage map:story {Tags:["PlayerMarker.FirstPlains.2","PlayerMarker.Place","PlayerMarker.FirstPlains"]}
# execute positioned -107.5 -8 -148.5 summon marker run function map:story/_marker/place_getter

#テレポート開始地点
kill @e[tag=Teleporter.FirstPlains.1]
data merge storage map:story {Tags:["Teleporter.FirstPlains.1","Teleport.Place"]}
execute positioned -85.5 11 -122.5 summon item_display run function map:story/_marker/teleport_point

kill @e[tag=Story.FirstPlains.1]
data merge storage map:story {Tags:["Story.FirstPlains.1","Story"]}
execute positioned -14.5 6 -2.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.2]
data merge storage map:story {Tags:["Story.FirstPlains.2","Story"]}
execute positioned -24.5 6 -6.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.3]
data merge storage map:story {Tags:["Story.FirstPlains.3","Story"]}
execute positioned -39.5 6 -9.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.4]
data merge storage map:story {Tags:["Story.FirstPlains.4","Story"]}
execute positioned -47.5 7 -27.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.5]
data merge storage map:story {Tags:["Story.FirstPlains.5","Story"]}
execute positioned -50.5 8 -49.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.6]
data merge storage map:story {Tags:["Story.FirstPlains.6","Story"]}
execute positioned -55.5 10 -67.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.7]
data merge storage map:story {Tags:["Story.FirstPlains.7","Story"]}
execute positioned -62.5 11 -85.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.8]
data merge storage map:story {Tags:["Story.FirstPlains.8","Story"]}
execute positioned -66.5 11 -102.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.9]
data merge storage map:story {Tags:["Story.FirstPlains.9","Story"]}
execute positioned -74.5 11 -115.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.10]
data merge storage map:story {Tags:["Story.FirstPlains.10","Story"]}
execute positioned -54.5 10 -111.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.11]
data merge storage map:story {Tags:["Story.FirstPlains.11","Story"]}
execute positioned -39.5 5 -103.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.12]
data merge storage map:story {Tags:["Story.FirstPlains.12","Story"]}
execute positioned -23.5 2 -88.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.13]
data merge storage map:story {Tags:["Story.FirstPlains.13","Story"]}
execute positioned -11.5 3 -71.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.FirstPlains.14]
data merge storage map:story {Tags:["Story.FirstPlains.14","Story"]}
execute positioned 4.5 7 -57.5 summon item_display run function map:story/_marker/init

kill @e[tag=Boss.FirstPlains.1]
data merge storage map:story {Tags:["Boss.FirstPlains.1","Boss.Marker","Story"]}
execute positioned 18.5 12 -47.5 summon item_display run function map:story/_marker/boss