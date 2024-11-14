#プレイヤーが増える前の残りHPの割合を計算
scoreboard players operation $tmp Mobs.Health.Now = @s Mobs.Health.Now
scoreboard players operation $tmp Mobs.Health.Now *= $100 Core.Int
scoreboard players operation $tmp Mobs.Health.Now /= @s Mobs.Health.Max
#割合を0%-100%から50%-100%に圧縮
scoreboard players operation $tmp Mobs.Health.Now /= $2 Core.Int
scoreboard players operation $tmp Mobs.Health.Now += $50 Core.Int

#回復するhpを計算
scoreboard players operation @s Boss.Health.LoadHeal = @s Boss.Health.LoadPlus
scoreboard players operation @s Boss.Health.LoadHeal *= $tmp Mobs.Health.Now
scoreboard players operation @s Boss.Health.LoadHeal /= $100 Core.Int


# (現)500:(フル)1000 = 875:x
# フルhp / 現在hp = 変更後のフルhp(x) / 変更後の現在hp 
# これに沿って修正する(参加後のhp比が変わらないようにhpを加算する)
#ボスバーを修正(最大HPを加算)
    # 現在値の比を計算
    scoreboard players operation $tmp Mobs.Health.Max = @s Mobs.Health.Max
    scoreboard players operation $tmp Mobs.Health.Max *= $100 Core.Int
    scoreboard players operation $tmp Mobs.Health.Now = @s Mobs.Health.Now
    scoreboard players operation $tmp Mobs.Health.Max /= $tmp Mobs.Health.Now
    #HPを回復
    scoreboard players operation @s Mobs.Health.Now += @s Boss.Health.LoadHeal
    # 変更後のフルhp(x) / 変更後の現在hp = 対象の比 => 変更後のフルhp(x) = 対象の比 * 変更後の現在hp
    # $tmp Mobs.Health.Max は 変更後のフルhp(x)
    scoreboard players operation $tmp Mobs.Health.Max *= @s Mobs.Health.Now
    # もともと100倍になっていたのを元に戻す + ボスバーへ代入
    scoreboard players operation $tmp Mobs.Health.Max /= $100 Core.Int
    execute store result bossbar boss:story/mistcrestlake.miraculous_sword_dance max run scoreboard players operation @s Mobs.Health.Max = $tmp Mobs.Health.Max



scoreboard players operation $tmp Boss.Health.LoadPlus = @s Boss.Health.LoadHeal
#回復したhpを追加したプレイヤーに対して保持する
execute as @a[tag=Boss.MistcrestLake.MiraculousSwordDance] unless score @s Players.Boss.AppendHealth matches 0.. run scoreboard players operation @s Players.Boss.AppendHealth = $tmp Boss.Health.LoadPlus

#解放
scoreboard players reset $tmp Mobs.Health.Now
scoreboard players reset $tmp Boss.Health.LoadHeal
scoreboard players reset $tmp Mobs.Health.Max
scoreboard players reset $tmp Mobs.Health.Now