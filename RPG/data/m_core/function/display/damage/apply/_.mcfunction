# HPの割合計算
    scoreboard players operation @s Core.Health.Ratio = @s Mobs.Health.Now
    scoreboard players operation @s Core.Health.Ratio *= $40 Core.Int
    scoreboard players operation @s Core.Health.Ratio /= @s Mobs.Health.Max
# HPの割合に応じてCustomNameをHPBarに変換、分岐
    execute if score @s Core.Health.Ratio matches ..16 run function m_core:display/damage/apply/lv3/0
    execute if score @s Core.Health.Ratio matches 17..32 run function m_core:display/damage/apply/lv3/1
    execute if score @s Core.Health.Ratio matches 33.. run function m_core:display/damage/apply/lv2/4
# 名前表示タグ
    data modify entity @s CustomNameVisible set value 1b
# 表示時間
    data modify entity @s PortalCooldown set value 100