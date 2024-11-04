execute as @a run function players:tick_as_a

#プレイヤーが放った矢が遠すぎるor着弾しているならkill
execute as @e[type=arrow] at @s run function players:_damage/after/arrow