#ボスバーの削除
bossbar remove boss:story/firstplains

#アイテム取得タグ
tag @a[tag=Boss.FirstPlains] add Receive.BossDrop
#タグの削除
tag @a[tag=Boss.FirstPlains] remove Boss
tag @a[tag=Boss.FirstPlains] remove Boss.FirstPlains

#ボスをいないことにする
scoreboard players operation $firstPlainsBoss Boss.IsSpawn = $False Core.Bool

#討伐メッセージ
data merge storage core:message {msg:'[{"translate":"RPG.Enemy.Boss.FirstPlains"},{"text":"を討伐した！"}]'}
execute as @a[tag=Receive.BossDrop] run function m_core:message/system

#ストーリーの最前線を進める
execute as @a[tag=Receive.BossDrop] if score @s Map.Story.Progress matches 14 run scoreboard players add @s Map.Story.Progress 1
execute as @a[tag=Receive.BossDrop] if score @s Map.Story.IsReplay = $True Core.Bool run scoreboard players add @s Map.Story.Now 1

#アイテムドロップ関数


#経験値・コインのドロップと自身の削除
tag @a[tag=Receive.BossDrop] add Boss.Ended.FirstPlains
function boss:drop

#タグの削除
tag @a[tag=Receive.BossDrop] remove Receive.BossDrop


#読み込みの終了
execute positioned 18.5 12 -29.5 run forceload remove ~ ~