#経験値減算 + LvUP処理
scoreboard players operation @s Core.Lv.Xp.Now.Mana -= @s Core.Lv.Xp.Need.Mana
scoreboard players add @s Core.Lv.Main.Mana 1

#必要経験値を増加
scoreboard players add @s Core.Lv.Xp.Need.Mana 5
execute if score @s Core.Lv.Xp.Now.Mana >= $25 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Mana 3
execute if score @s Core.Lv.Xp.Now.Mana >= $50 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Mana 3
execute if score @s Core.Lv.Xp.Now.Mana >= $100 Core.Int run scoreboard players add @s Core.Lv.Xp.Need.Mana 3

#ステ上昇
scoreboard players add @s Core.Stat.ManaMax 1

execute store result storage core:lv/_direction view_level int 1 run scoreboard players get @s Core.Lv.Main.Mana
data merge storage core:lv/_direction {type:"Mana",color:"blue"}
function m_core:lv/up/main/_direction