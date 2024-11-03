tag @s add Death
#HPの50%の状態で蘇生される.
scoreboard players operation @s Players.Health.Now = @s Players.Health.Max
scoreboard players operation @s Players.Health.Now /= $2 Core.Int
#次のLvまでのXPをロストする
scoreboard players set @s Core.Lv.Xp.Now.Health 0
scoreboard players set @s Core.Lv.Main.Mana 0
scoreboard players set @s Core.Lv.Xp.Now.Speed 0
#見えなくして、死亡クールタイムをセットする
effect give @s blindness 3 255 true
gamemode spectator
scoreboard players set @s Players.Death.CoolTime 60

#tipsの表示
function players:chat/tips/_tips

tag @s add Respown_UUID
#回復後に元の場所に戻すためにマーカーを置いておく
execute summon marker run function players:death/_set_respownpoint
tag @s remove Respown_UUID