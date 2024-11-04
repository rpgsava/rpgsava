data merge storage core:check {UUID:""}
#もし、自身にByShortBowタグが存在すれば誰が打ったかを特定して、スコア:Players.Use.ShortBowを減算する
execute on passengers if data entity @s data.ByShortBow run data modify storage core:check UUID set from entity @s data.Owner
#同じプレイヤーを特定する
execute as @a run function m_core:get/same_player
#もし、打ったプレイヤーならスコア:Players.Use.ShortBowを減算する
execute as @a if score @s Players.IsSame matches 1 run scoreboard players remove @s Players.Use.ShortBow 1

kill @s