#まず、ボスのフラグを持っている人がいるなら
execute in map:rpg_map if entity @a[tag=Boss] run function boss:_check

#ボス終了後のカウント
execute as @a[tag=Boss.Ended] run function boss:end_count