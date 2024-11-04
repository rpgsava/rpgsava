#1%を算出
scoreboard players operation @s Players.Health.Heal = @s Players.Health.Max

#回復力
scoreboard players operation @s Players.Health.Heal *= @s Players.Health.Recovery

# tellraw @s [{"score":{"objective":"Players.Health.Heal","name":"@s"}}," ",{"score":{"objective":"Players.Health.Now","name":"@s"}}]

#1%にする&倍率を100%->1に
scoreboard players operation @s Players.Health.Heal /= $100 Core.Int
scoreboard players operation @s Players.Health.Heal /= $100 Core.Int


#回復
scoreboard players operation @s Players.Health.Now += @s Players.Health.Heal


#最大値を超えていたらカット
execute if score @s Players.Health.Max < @s Players.Health.Now run scoreboard players operation @s Players.Health.Now = @s Players.Health.Max

scoreboard players set @s Players.Health.CoolTime 20
#もし隠し満腹度が6以上なら16tick
execute if score @s Players.Food.Exhaustion matches 6.. run scoreboard players set @s Players.Health.CoolTime 16
#10以上なら13tick
execute if score @s Players.Food.Exhaustion matches 10.. run scoreboard players set @s Players.Health.CoolTime 13
#15以上なら10tick
execute if score @s Players.Food.Exhaustion matches 15.. run scoreboard players set @s Players.Health.CoolTime 10

effect give @s hunger 2 1 true

#表示
function players:_damage/view/health