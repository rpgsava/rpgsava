advancement revoke @s only mobs:hit/mobs_to_player
#モブがプレイヤーを殴ったとき(現在はプレイヤー視点)#TODO

#ダメージをセット
execute on attacker run scoreboard players operation $dmg Mobs.Attack.Damage = @s Mobs.Attack.Damage
#ダメージを計算
    #防御力の計算

    #healthの減算
    scoreboard players operation @s Players.Health.Now -= $dmg Mobs.Attack.Damage
    #hpが0を下回っている場合(タグを付与し、HPを回復して3秒間何も出来なくする(3秒後その場でリスポーン))
    execute if score @s Players.Health.Now matches ..0 run function players:death/_just_death

    #hpの表示を変更する
    function players:_damage/view/health