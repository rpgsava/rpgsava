advancement revoke @s only players:hit/playerarrow_to_mobs

#弓の計算済みダメージをダメージに代入する
scoreboard players operation @s Players.Attack.Damage = @s Players.Attack.ArrowDamage

#ダメージ計算
    function players:_damage/calc/arrow_damage


# HurtByTimeStumpを見て0でないモブがいれば弓があてられたモブである
execute as @e[type=!player] if data entity @s HurtByTimestamp store success score @s Mobs.Attack.IsReceive unless data entity @s {HurtByTimestamp:0}
# ダメージを受けたモブがいればダメージを変数から減算する処理をする(尚、ダメージ計算は弓を打った時点でしているものとする)
tag @s add Attack.Now
execute as @e[type=!player,scores={Mobs.Attack.IsReceive = 1}] run function players:_damage/do_damage
tag @s remove Attack.Now