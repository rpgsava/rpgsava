advancement revoke @s only players:hit/player_to_mobs

#対象一致判定
    tag @s add Attack.CopyCheck
    #自身が
        #相手側からみた攻撃が誰から受けたものかをstorageへ
        #低い方のinteraction
        execute as @e[tag=Enemy] on passengers if data entity @s attack run function players:_damage/hit_check
        #高い方のinteraction
        execute as @e[tag=Enemy] on passengers on passengers if data entity @s attack run function players:_damage/hit_check
        tag @s remove Attack.CopyCheck
    #この時点で人物が一致していれば$bool Players.Attack.PlayerCheck == True
    #なのでFalseなら攻撃処理を中断する
    execute if score $bool Players.Attack.PlayerCheck = $False Core.Bool run return 0
    scoreboard players reset $bool Players.Attack.PlayerCheck

#ダメージ計算
    function players:_damage/calc_player_damage
    
#ダメージ入力
    tag @s add Attack.Now
    #殴ったモブを特定
    #全てのEnemyを対象にそこに乗っているinteractionに対象をさらに移す
    execute as @e[tag=Enemy,tag=Mobs.ReceiveDMG] run function players:_damage/do_damage

    # tellraw @a [{"selector":"@s"}]
    tag @s remove Attack.Now