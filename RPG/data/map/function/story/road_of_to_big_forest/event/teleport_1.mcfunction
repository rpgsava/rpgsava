function map:tag_all_remove
tag @s add Story
tag @s add Story.RoadOfToBigForest
data merge storage core:message {title:'{"translate":"RPG.Place.RoadOfToBigForest"}',msg:'["",{"text":""}]'}
#ストーリーの始まり
data modify storage map:story/progress now set from storage map:story/progress place[0][3]
function map:story/_marker/progress/set
function m_core:message/teleport