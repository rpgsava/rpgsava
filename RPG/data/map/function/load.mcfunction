#mapおよびそこで進行するストーリーを追う
    #達成済みのストーリーを再生するかの変数
    scoreboard objectives add Map.Story.IsReplay dummy
    #現在進行中のストーリー番号
    #Map.Story.IsReplay == Falseの場合はMap.Story.Progressで固定される
    scoreboard objectives add Map.Story.Now dummy
    #現在までに進行した最大のストーリー番号
    #この番号を使い買えるものや行ける場所を判定する
    scoreboard objectives add Map.Story.Progress dummy

scoreboard objectives add Map.Story.Pos.Y dummy

scoreboard objectives add Map.Teleport.IsViewTeleport dummy
scoreboard objectives add Map.Boss.CanStart dummy

scoreboard objectives add Map.Area.NowNumberOfMobs dummy

#場所ごとのストーリー番号の初期値
data merge storage map:story/progress {place:       [[0,100,200,300,400,500,600]]}
data merge storage map:story/progress {end:         [[15,106,200,399,499,599,699]]}
data merge storage map:story/progress {can_teleport:[[14,15,200,300,400,500,600]]}

#declare storage map:msg

#アイテムを移す用の保管領域
execute in map:rpg_map run forceload add 0 0
setblock 0 0 0 white_shulker_box

scoreboard objectives add Map.Story.TalkVillager custom:talked_to_villager