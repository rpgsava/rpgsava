function m_core:load

scoreboard players set @s Core.Lv.Main.Health 0
scoreboard players set @s Core.Lv.Main.Mana 0
scoreboard players set @s Core.Lv.Main.Speed 0

scoreboard players set @s Core.Lv.Xp.Need.Health 15
scoreboard players set @s Core.Lv.Xp.Need.Mana 15
scoreboard players set @s Core.Lv.Xp.Need.Speed 15

scoreboard players set @s Core.Lv.Xp.Now.Health 0
scoreboard players set @s Core.Lv.Xp.Now.Mana 0
scoreboard players set @s Core.Lv.Xp.Now.Speed 0

scoreboard players set @s Core.Stat.Mana 0

#中間サイズに設定
scoreboard players set @s Core.System.Gui.Scale 1

#ステ設定
scoreboard players set @s Core.Stat.ManaMax 100

#プレイヤーIDの割り当て
scoreboard players operation @s Core.PlayerId = $next Core.PlayerId
scoreboard players add $next Core.PlayerId 1

#ショップの状態
scoreboard players set @s Core.Shop.IsSummonMinecart 0

function players:init
function map:init