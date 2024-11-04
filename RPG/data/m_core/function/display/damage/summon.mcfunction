# ダメージ表示用item召喚
    loot spawn ~ ~ ~ loot m_core:dmg_in
# itemの名前にダメージを代入
    execute as @e[type=item,distance=..0] run function m_core:display/damage/set_data