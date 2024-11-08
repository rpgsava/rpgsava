# バニラの殴るでなく、コマンド上で殴るを表現するためのコマンド
#> 呼び出し
#       ダメージを与えるモブ視点で呼び出し
#       ダメージを受けるプレイヤーにMobs.Command.Attackedを付与

#ダメージをセット
scoreboard players operation $dmg Mobs.Attack.Damage = @s Mobs.Attack.Damage
#ダメージを計算
    #防御力の計算

    #healthの減算
    scoreboard players operation @p[tag=Mobs.Command.Attacked] Players.Health.Now -= $dmg Mobs.Attack.Damage
    #hpが0を下回っている場合(タグを付与し、HPを回復して3秒間何も出来なくする(3秒後その場でリスポーン))
    execute if score @p[tag=Mobs.Command.Attacked] Players.Health.Now matches ..0 as @p[tag=Mobs.Command.Attacked] run function players:death/_just_death

    #hpの表示を変更する
    execute as @p[tag=Mobs.Command.Attacked] run function players:_damage/view/health


tag @s remove Mobs.Command.Attacked