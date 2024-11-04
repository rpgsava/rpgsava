
#既に着弾しているか周囲80mにプレイヤーがいない弓であれば
execute if data entity @s {inGround:1b} run function players:_damage/after/arrow_kill
execute unless entity @a[distance=..80] run function players:_damage/after/arrow_kill