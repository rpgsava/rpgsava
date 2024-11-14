# 変更後フルhp/現在フルhp * 現在hpをすることで割合を変化させずにhpをリムーブする
# 副作用としてちょっとだけhpが増える
## 例えば一人目が500削って500残っている場合
## 2人目の追加hpは375
## 合計hpは875/1375になる

# (現)500:(フル)1000 = 875:x
# フルhp / 現在hp = 変更後のフルhp(x) / 変更後の現在hp 


# コピー
scoreboard players operation $tmp2 Players.Boss.AppendHealth = $tmp Players.Boss.AppendHealth

# 一旦100倍して割合を計算
scoreboard players operation $tmp Players.Boss.AppendHealth *= $100 Core.Int
# /実際のmax_health
scoreboard players operation $tmp Players.Boss.AppendHealth /= @s Mobs.Health.Max
# hpをその割合に変更
scoreboard players operation @s Mobs.Health.Now *= $tmp Players.Boss.AppendHealth
scoreboard players operation @s Mobs.Health.Now /= $100 Core.Int


# maxhealthを$tmp Players.Boss.AppendHealth に変更
scoreboard players operation @s Mobs.Health.Max = $tmp2 Players.Boss.AppendHealth

# 解放
scoreboard players reset $tmp2 Players.Boss.AppendHealth