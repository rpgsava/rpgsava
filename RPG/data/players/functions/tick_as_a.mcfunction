#最初のログイン
execute unless score @s Players.Login.SumTime matches 20.. run function players:login/first
#毎回のログイン検知
execute if score @s Players.Login.LeaveCheck matches 1.. run function players:login/every

execute as @s[tag=Death] run function players:death/count

execute if score @s Players.Health.CoolTime matches ..0 if score @s Players.Health.Now < @s Players.Health.Max if data entity @s {foodLevel:20} run function players:_damage/heal/food_check

scoreboard players remove @s Players.Health.CoolTime 1

execute if score @s Core.Stat.Mana < @s Core.Stat.ManaMax run function players:mana/regen/_