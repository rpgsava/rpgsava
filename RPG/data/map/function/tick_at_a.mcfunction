
# テレポーターが存在するか
execute if score @s Map.Teleport.IsViewTeleport = $True Core.Bool if entity @e[type=item_display,tag=Teleport.Place,distance=..5] run function map:story/_marker/do_teleport/access

#現在の位置を判定
function map:player_pos_check/_

#最後にロード判定を切り替える(初期地点の場所表示) : >ForceTeleportはテレポータの周りでなくてもテレポ出来るかのタグ
# function map:story/_marker/do_teleport/access内で処理するように変更 > execute if entity @e[tag=Teleport.Place,distance=..5] run scoreboard players operation @s Map.Teleport.IsViewTeleport = $False Core.Bool
    execute unless entity @e[tag=Teleport.Place,distance=..5] run scoreboard players operation @s Map.Teleport.IsViewTeleport = $True Core.Bool
    #強制テレポ不可能の場合
    execute unless entity @e[tag=Teleport.Place,distance=..5] unless entity @s[tag=ForceTeleport] run scoreboard players reset @s Core.System.Input

#ボスマーカー接触判定
    execute unless entity @e[tag=Boss.Marker,distance=..5] run scoreboard players operation @s Map.Boss.CanStart = $True Core.Bool

#inputの確認
execute if score @s Core.System.Input matches 1.. run function map:input/_check