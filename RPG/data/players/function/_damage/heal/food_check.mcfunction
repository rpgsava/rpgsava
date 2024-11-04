execute store result score @s Players.Food.Exhaustion run data get entity @s foodSaturationLevel
#もし、残量が1以上ある&前回の回復から1秒経過しているなら1消費して0.1%回復する
execute if score @s Players.Food.Exhaustion matches 1.. run function players:_damage/heal/heal