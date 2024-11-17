# ループの残り回数を減算
scoreboard players remove $loop.swordDance Boss.mistcrestLakeBoss.miraculousSwordDance 1
# tickループをリセット
scoreboard players set $mistcrestLakeBoss.miraculousSwordDance Boss.Tick 1000

# エンティティの削除
kill @e[tag=mistcrestLakeBoss.miraculousSwordDance.swordDance]