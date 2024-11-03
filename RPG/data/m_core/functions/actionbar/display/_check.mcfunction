#manaの表示
function m_core:actionbar/display/mana

#コインの表示
function m_core:actionbar/display/coin

#Lvに関するチェック
execute if score @s Core.Lv.Xp.Get.Skill matches 0 run function m_core:actionbar/display/lv/none
execute if score @s Core.Lv.Xp.Get.Time matches 1.. if score @s Core.Lv.Xp.Get.Skill matches 1 run function m_core:actionbar/display/lv/health
execute if score @s Core.Lv.Xp.Get.Time matches 1.. if score @s Core.Lv.Xp.Get.Skill matches 2 run function m_core:actionbar/display/lv/mana
execute if score @s Core.Lv.Xp.Get.Time matches 1.. if score @s Core.Lv.Xp.Get.Skill matches 3 run function m_core:actionbar/display/lv/speed

#スペース量の調整
execute if score @s Core.System.Gui.Scale matches 0 run data merge storage core:actionbar/space {bef_lv:'[{"text":"\\uF828\\uF828\\uF828\\uF828\\uF828","font":"space"}]',bef_mana:'{"text":"\\uF828\\uF828\\uF828\\uF828\\uF828","font":"space"}'}
execute if score @s Core.System.Gui.Scale matches 1 run data merge storage core:actionbar/space {first:'{"text":"\\uF82B\\uF82A","font":"space"}',bef_lv:'[{"text":"\\uF82C\\uF82A\\uF822\\uF828","font":"space"}]',bef_mana:'{"text":"\\uF82C\\uF829","font":"space"}'}

#最終表示
title @s actionbar ["",{"storage":"core:actionbar/space","nbt":"first","interpret": true},{"storage":"core:actionbar/space","nbt":"bef_lv","interpret": true},"",{"storage":"core:actionbar/xp","nbt":"name","interpret": true},{"storage":"core:actionbar/xp","nbt":"lv","interpret": true},{"storage":"core:actionbar/xp","nbt":"colon","interpret": true},{"storage": "core:actionbar/xp","nbt":"now","interpret": true},{"storage": "core:actionbar/xp","nbt":"slash","interpret": true},{"storage": "core:actionbar/xp","nbt":"need","interpret": true},{"storage":"core:actionbar/xp","nbt":"end","interpret": true},{"storage":"core:actionbar/xp","nbt":"end_space","interpret": true},"",{"storage":"core:actionbar/space","nbt":"bef_mana","interpret": true},"",{"storage":"core:actionbar/mana","nbt":"name","interpret": true},{"storage": "core:actionbar/mana","nbt":"now","interpret": true},{"storage": "core:actionbar/mana","nbt":"slash","interpret": true},{"storage": "core:actionbar/mana","nbt":"max","interpret": true},{"storage":"core:actionbar/coin","nbt":"bef_space","interpret": true},{"storage": "core:actionbar/coin","nbt":"now","interpret": true}]