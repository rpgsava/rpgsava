# 全員の集計
scoreboard players operation $tmp Players.Boss.AppendHealth += @a[tag=Boss.MistcrestLake.MiraculousSwordDance] Players.Boss.AppendHealth

# 集計とmax_healthがあっているかを計算
scoreboard players operation $tmp Players.Boss.AppendHealth -= @s Mobs.Health.Max

# もし1..ならば、その数値分max_healthを減算し、その比率に応じてhpも減算する
execute if score $tmp Players.Boss.AppendHealth matches 1.. run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/remove_health/change


# 解放
scoreboard players reset $tmp Players.Boss.AppendHealth