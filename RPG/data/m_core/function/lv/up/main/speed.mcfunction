#経験値減算 + LvUP処理
scoreboard players operation @s Core.Lv.Xp.Now.Speed -= @s Core.Lv.Xp.Need.Speed
scoreboard players add @s Core.Lv.Main.Speed 1

#必要経験値を増加
scoreboard players add @s Core.Lv.Xp.Need.Speed 5
execute if score @s Core.Lv.Xp.Now.Speed >= $25 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Speed 3
execute if score @s Core.Lv.Xp.Now.Speed >= $50 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Speed 3
execute if score @s Core.Lv.Xp.Now.Speed >= $100 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Speed 3

execute store result storage core:lv/_direction view_level int 1 run scoreboard players get @s Core.Lv.Main.Speed
data merge storage core:lv/_direction {type:"Speed",color:"aqua"}
function m_core:lv/up/main/_direction