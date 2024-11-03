# 更に分岐
    execute if score @s Core.Health.Ratio matches 33..36 run function m_core:display/damage/apply/lv1/8
    execute if score @s Core.Health.Ratio matches 37.. run function m_core:display/damage/apply/lv1/9