#タグ削除
tag @s remove Mobs.ReceiveDMG
data merge entity @s {HurtByTimestamp:0}

#防御力計算#TODO

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