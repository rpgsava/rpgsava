#storageに移す
data modify storage mobs:receive_damage HitUUID set from entity @s attack.player

#storageへ自身のUUIDをコピーして失敗したなら同一人物(同一人物でなければreturnしなければならない)
# tellraw @a [{"storage":"mobs:receive_damage","nbt":"HitUUID"}]
execute store success score $ans Players.Attack.PlayerCheck run data modify storage mobs:receive_damage HitUUID set from entity @a[tag=Attack.CopyCheck,limit=1] UUID
# tellraw @a [{"storage":"mobs:receive_damage","nbt":"HitUUID"}]

#どちらかのinteractionがヒット判定を受けていれば1どちらも無ければ0
execute if score $ans Players.Attack.PlayerCheck = $False Core.Bool run scoreboard players add $bool Players.Attack.PlayerCheck 1

#もし、$ans Players.Attack.PlayerCheck == Falseなら今回攻撃を入れるため、次の判定で再度引っかからないようにplayerタグを削除する
execute if score $ans Players.Attack.PlayerCheck = $False Core.Bool run data remove entity @s attack
#そして攻撃対象であるタグを付与する
execute if score $ans Players.Attack.PlayerCheck = $False Core.Bool on vehicle if entity @s[type=!interaction] run tag @s add Mobs.ReceiveDMG
execute if score $ans Players.Attack.PlayerCheck = $False Core.Bool on vehicle on vehicle run tag @s add Mobs.ReceiveDMG