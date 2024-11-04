# モブの高さごとの表示位置の調整
    execute if entity @s[type=#m_core:size/short] positioned ~ ~0.9 ~ run function m_core:display/damage/summon
    execute if entity @s[type=#m_core:size/medium] positioned ~ ~1.3 ~ run function m_core:display/damage/summon
    execute if entity @s[type=#m_core:size/human] positioned ~ ~1.8 ~ run function m_core:display/damage/summon
    execute if entity @s[type=#m_core:size/tall] positioned ~ ~2.4 ~ run function m_core:display/damage/summon