#自身のタグを削除
tag @s remove Boss.MistcrestLake.MiraculousSwordDance

#もし、自分のほかにそのボスを遊んでいるプレイヤーが存在しないならボスの終了処理をする
execute unless entity @a[tag=Boss.MistcrestLake.MiraculousSwordDance] as @e[tag=mistcrestLakeBoss.miraculousSwordDance] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/death