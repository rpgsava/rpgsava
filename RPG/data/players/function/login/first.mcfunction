#最初のログイン
#ステータスの初期化
function m_core:init
#タイムのセット
scoreboard players set @s Players.Login.SumTime 21

effect give @s blindness 2 1 true
effect give @s slowness 2 255 true
effect give @s jump_boost 2 128 true
#スタート地点へテレポートする
execute in map:rpg_map run tp @s 0 5 0 110 0