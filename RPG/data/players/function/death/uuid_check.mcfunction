data modify storage players:respown uuid set from entity @a[tag=Respown_UUID,scores={Players.Death.CoolTime=..0},limit=1] UUID
execute store success score $bool Players.Death.UUID run data modify storage players:respown uuid set from entity @s data.RespownUUID
#もし$Falseなら同一人物のリスポーン地点なのでリスポーン・そうでなければreturn
execute if score $bool Players.Death.UUID = $True Core.Bool run return 0
execute if score $bool Players.Death.UUID = $False Core.Bool run function players:death/teleport