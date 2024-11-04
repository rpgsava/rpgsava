#経験値減算 + LvUP処理
scoreboard players operation @s Core.Lv.Xp.Now.Health -= @s Core.Lv.Xp.Need.Health
scoreboard players add @s Core.Lv.Main.Health 1

#必要経験値を増加
scoreboard players add @s Core.Lv.Xp.Need.Health 5
execute if score @s Core.Lv.Xp.Now.Health >= $25 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Health 3
execute if score @s Core.Lv.Xp.Now.Health >= $50 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Health 3
execute if score @s Core.Lv.Xp.Now.Health >= $100 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Health 3

execute store result storage core:lv/_direction view_level int 1 run scoreboard players get @s Core.Lv.Main.Health
data merge storage core:lv/_direction {type:"Health",color:"light_purple"}
function m_core:lv/up/main/_direction