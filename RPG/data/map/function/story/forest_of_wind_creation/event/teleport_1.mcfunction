# tp @s 25.5 -8 25.5 180 0
function map:tag_all_remove
tag @s add Story
tag @s add Story.ForestOfWindCreation
data merge storage core:message {title:'{"translate":"RPG.Place.ForestOfWindCreation"}',msg:'["",{"text":""}]'}
#ストーリーの始まり
data modify storage map:story/progress now set from storage map:story/progress place[0][2]
function map:story/_marker/progress/set
function m_core:message/teleport