# tp @s 0 6 0 90 0
function map:tag_all_remove
tag @s add Story
tag @s add Story.FirstPlains
data merge storage core:message {title:'{"translate":"RPG.Place.FirstPlains"}',msg:'["",{"text":"チュートリアル"}]'}
data modify storage map:story/progress now set from storage map:story/progress place[0][0]
function map:story/_marker/progress/set
function m_core:message/teleport