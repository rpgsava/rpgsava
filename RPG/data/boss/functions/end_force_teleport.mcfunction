
#初期地点へtp
execute in map:rpg_map run tp @s 0 6 0 90 0
#tellraw
data merge storage core:message {msg:'[{"translate": "RPG.MSG.EndedLongError"}]'}
function m_core:message/system
#タグの削除
function boss:remove_all_ended_tag
