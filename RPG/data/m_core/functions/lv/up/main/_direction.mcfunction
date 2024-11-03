#演出
playsound entity.player.levelup master @s ~ ~ ~ 1.5 0
particle happy_villager ~ ~0.5 ~ 0.5 1 0.5 0 100
data merge storage core:message {msg:'[{"text": "lvup : ","color": "gold"},{"storage": "core:lv/_direction", "nbt": "type"},{"text": "Lvが"},{"storage": "core:lv/_direction", "nbt": "view_level"},{"text": "になりました"}]'}
function m_core:message/system