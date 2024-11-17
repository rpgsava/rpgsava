#タグ削除
tag @s remove Mobs.ReceiveDMG
data merge entity @s {HurtByTimestamp:0}


# サウンドチェック
execute at @s run function mobs:_sounds/_check


# 防御力計算
# 攻撃力 <- ❈防御/ ( ❈防御力+100) * 攻撃力
    scoreboard players operation $tmp Mobs.Defence = @s Mobs.Defence
    scoreboard players operation $tmp+100 Mobs.Defence = @s Mobs.Defence
    scoreboard players operation $tmp+100 Mobs.Defence += $100 Mobs.Defence
    # 分子を1000倍して割る
    scoreboard players operation $tmp Mobs.Defence *= $1000 Mobs.Defence
    scoreboard players operation $tmp Mobs.Defence /= $tmp+100 Mobs.Defence
    # 攻撃力に乗算
    scoreboard players operation $dmg Mobs.Damage *= $tmp Mobs.Defence
    # 1000で割る
    scoreboard players operation $dmg Mobs.Damage /= $1000 Mobs.Defence


#自身に残ったダメージを与える
    scoreboard players operation $dmg Players.Attack.Damage = @a[tag=Attack.Now,limit=1] Players.Attack.Damage
    #表示
        execute at @s run function m_core:display/damage/_view
    #HP減算
    scoreboard players operation @s Mobs.Health.Now -= $dmg Players.Attack.Damage

#ダメージの見た目
    execute at @a[tag=Attack.Now,limit=1] run damage @s 0.0 player_attack at ~ ~ ~

#もし、HPが0を下回り、死亡判定なら
    execute if score @s[tag=!Boss] Mobs.Health.Now matches ..0 at @s run function mobs:_death
    execute if score @s[tag=Boss] Mobs.Health.Now matches ..0 at @s run function boss:_death/_
    