#時間リセット
scoreboard players reset @s Players.Mana.Tick

#2%を回復
scoreboard players operation $tmp Core.Stat.Mana = @s Core.Stat.ManaMax
scoreboard players operation $tmp Core.Stat.Mana /= $50 Core.Int

#manaを加算
scoreboard players operation @s Core.Stat.Mana += $tmp Core.Stat.Mana
execute if score @s Core.Stat.Mana > @s Core.Stat.ManaMax run scoreboard players operation @s Core.Stat.Mana = @s Core.Stat.ManaMax