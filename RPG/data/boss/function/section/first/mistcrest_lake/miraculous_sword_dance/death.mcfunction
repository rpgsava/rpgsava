#ボスバーの削除
bossbar remove boss:story/mistcrestlake.miraculous_sword_dance

# ボスに与えたhpを消す
scoreboard players reset @a[tag=Boss.MistcrestLake.MiraculousSwordDance] Players.Boss.AppendHealth

#アイテム取得タグ
tag @a[tag=Boss.MistcrestLake.MiraculousSwordDance] add Receive.BossDrop
#タグの削除
tag @a[tag=Boss.MistcrestLake.MiraculousSwordDance] remove Boss
tag @a[tag=Boss.MistcrestLake.MiraculousSwordDance] remove Boss.MistcrestLake.MiraculousSwordDance

#ボスをいないことにする
scoreboard players operation $mistcrestLakeBoss.miraculousSwordDance Boss.IsSpawn = $False Core.Bool

#討伐メッセージ
data merge storage core:message {msg:'[{"translate":"RPG.Enemy.Boss.MiraculousSwordDance"},{"text":"を討伐した！"}]'}
execute as @a[tag=Receive.BossDrop] run function m_core:message/system

#ストーリーの最前線を進める

#アイテムドロップ関数


#経験値・コインのドロップと自身の削除
tag @a[tag=Receive.BossDrop] add Boss.Ended.MiraculousSwordDance
function boss:drop

#タグの削除
tag @a[tag=Receive.BossDrop] remove Receive.BossDrop

# フィールドを初期状態に戻す
function boss:section/first/mistcrest_lake/miraculous_sword_dance/field_ending/_
# 不要なモブを捨てる
kill @e[tag=mistcrestLakeBoss.miraculousSwordDance.Enemy]

#読み込みの終了
execute positioned 25000 12 30000 run forceload remove ~-25 ~-25 ~25 ~25