# 一旦100倍して割合を計算
scoreboard players operation $tmp Players.Boss.AppendHealth *= $100 Core.Int
# /実際のmax_health
scoreboard players operation $tmp Players.Boss.AppendHealth /= @s Mobs.Health.Max
# hpをその割合に変更
scoreboard players operation @s Mobs.Health.Now *= $tmp Players.Boss.AppendHealth
scoreboard players operation @s Mobs.Health.Now /= $100 Core.Int
# maxhealthを$tmp Players.Boss.AppendHealth に変更
scoreboard players operation $tmp Players.Boss.AppendHealth /= $100 Core.Int
scoreboard players operation @s Mobs.Health.Max = $tmp Players.Boss.AppendHealth