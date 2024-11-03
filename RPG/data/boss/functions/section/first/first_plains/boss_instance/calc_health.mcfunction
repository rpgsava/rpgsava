#プレイヤーが増える前の残りHPの割合を計算
scoreboard players operation $tmp Mobs.Health.Now = @s Mobs.Health.Now
scoreboard players operation $tmp Mobs.Health.Now *= $100 Core.Int
scoreboard players operation $tmp Mobs.Health.Now /= @s Mobs.Health.Max
#割合を0%-100%から50%-100%に圧縮
scoreboard players operation $tmp Mobs.Health.Now /= $2 Core.Int
scoreboard players operation $tmp Mobs.Health.Now += $50 Core.Int

#ボスバーを修正(最大HPを加算)
execute store result bossbar boss:story/firstplains max run scoreboard players operation @s Mobs.Health.Max += @s Boss.Health.LoadPlus

#回復するhpを計算
scoreboard players operation @s Boss.Health.LoadHeal = @s Boss.Health.LoadPlus
scoreboard players operation @s Boss.Health.LoadHeal *= $tmp Mobs.Health.Now
scoreboard players operation @s Boss.Health.LoadHeal /= $100 Core.Int

#HPを回復
scoreboard players operation @s Mobs.Health.Now += @s Boss.Health.LoadHeal


#解放
scoreboard players reset $tmp Mobs.Health.Now