## スタート地点とストーリーフラグの設置

#テレポート開始地点
kill @e[tag=Teleporter.RoadOfToBigForest.1]
data merge storage map:story {Tags:["Teleporter.RoadOfToBigForest.1","Teleport.Place"]}
execute positioned -85.5 11 -122.5 summon item_display run function map:story/_marker/teleport_point

kill @e[tag=Story.RoadOfToBigForest.1]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.1","Story"]}
execute positioned -35.5 7 -399.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.2]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.2","Story"]}
execute positioned -32.5 6 -414.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.3]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.3","Story"]}
execute positioned -29.5 6 -438.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.4]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.4","Story"]}
execute positioned -25.5 7 -458.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.5]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.5","Story"]}
execute positioned -23.5 6 -481.6 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.6]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.6","Story"]}
execute positioned -23.5 3 -502.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.7]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.7","Story"]}
execute positioned -4.5 4 -519.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.8]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.8","Story"]}
execute positioned 17.4 5 -530.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.9]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.9","Story"]}
execute positioned 42.5 6 -556.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.10]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.10","Story"]}
execute positioned 47.5 9 -574.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.11]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.11","Story"]}
execute positioned 49.5 10 -599.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.12]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.12","Story"]}
execute positioned 38.5 11 -623.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.13]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.13","Story"]}
execute positioned 30.3 11 -648.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.14]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.14","Story"]}
execute positioned 30.4 11 -675.5 summon item_display run function map:story/_marker/init

kill @e[tag=Story.RoadOfToBigForest.15]
data merge storage map:story {Tags:["Story.RoadOfToBigForest.15","Story"]}
execute positioned 28.5 11 -692.5 summon item_display run function map:story/_marker/init