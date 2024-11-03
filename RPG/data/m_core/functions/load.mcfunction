# ゲームルールの設定
gamerule doMobSpawning false
gamerule doVinesSpread false
gamerule naturalRegeneration false


# 変数の宣言
scoreboard objectives add Core.Lv.Main.Health dummy
scoreboard objectives add Core.Lv.Main.Mana dummy
scoreboard objectives add Core.Lv.Main.Speed dummy

scoreboard objectives add Core.Lv.Xp.Now.Health dummy
scoreboard objectives add Core.Lv.Xp.Now.Mana dummy
scoreboard objectives add Core.Lv.Xp.Now.Speed dummy
scoreboard objectives add Core.Lv.Xp.Need.Health dummy
scoreboard objectives add Core.Lv.Xp.Need.Mana dummy
scoreboard objectives add Core.Lv.Xp.Need.Speed dummy

scoreboard objectives add Core.Health dummy
scoreboard objectives setdisplay belowName Core.Health

scoreboard objectives add Core.Bool dummy
scoreboard players set $False Core.Bool 0
scoreboard players set $True Core.Bool 1

scoreboard objectives add Core.Int dummy
scoreboard players set $-1 Core.Int -1
scoreboard players set $1 Core.Int 1
scoreboard players set $2 Core.Int 2
scoreboard players set $3 Core.Int 3
scoreboard players set $4 Core.Int 4
scoreboard players set $5 Core.Int 5
scoreboard players set $6 Core.Int 6
scoreboard players set $7 Core.Int 7
scoreboard players set $8 Core.Int 8
scoreboard players set $9 Core.Int 9
scoreboard players set $10 Core.Int 10
scoreboard players set $16 Core.Int 16
scoreboard players set $20 Core.Int 20
scoreboard players set $25 Core.Int 25
scoreboard players set $40 Core.Int 40
scoreboard players set $50 Core.Int 50
scoreboard players set $100 Core.Int 100
scoreboard players set $200 Core.Int 200
scoreboard players set $400 Core.Int 400
scoreboard players set $500 Core.Int 500
scoreboard players set $1000 Core.Int 1000
scoreboard players set $2000 Core.Int 2000

scoreboard objectives add Core.Time dummy

scoreboard objectives add Core.Debug dummy

#前回経験値を得た種類と残りの表示時間を保持
scoreboard objectives add Core.Lv.Xp.Get.Time dummy
scoreboard objectives add Core.Lv.Xp.Get.Skill dummy

scoreboard objectives add Core.Stat.Mana dummy
scoreboard objectives add Core.Stat.ManaMax dummy

scoreboard objectives add Core.System.Gui.Scale dummy

scoreboard objectives add Core.Value.Rand dummy

scoreboard objectives add Core.View.Damage dummy

scoreboard objectives add Core.Health.Ratio dummy

scoreboard objectives add Core.Coin dummy

scoreboard objectives add Core.System.Input trigger

scoreboard objectives add Core.PlayerId dummy

#空きインベントリのうち最も小さい場所を返す
scoreboard objectives add Core.System.Get.MinEmptyInventorySlot dummy

#ショップが頭上に存在するか
scoreboard objectives add Core.Shop.IsSummonMinecart dummy
data merge storage core:shop {init:{Items:[{Slot:0b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:1b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:2b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:3b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:4b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:5b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:6b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:7b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:8b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:10b,Count:1b,id:"minecraft:wooden_sword",tag:{ShopItem:true,display:{Name:'[{"translate":"RPG.Shop.Weapon","color":"yellow"}]'},HideFlags:255}},{Slot:11b,Count:1b,id:"minecraft:leather_chestplate",tag:{ShopItem:true,display:{Name:'[{"translate":"RPG.Shop.Armor","color":"yellow"}]'},HideFlags:255}},{Slot:12b,Count:1b,id:"minecraft:glow_berries",tag:{ShopItem:true,display:{Name:'[{"translate":"RPG.Shop.Fruit","color":"yellow"}]'},HideFlags:255}},{Slot:13b,Count:1b,id:"minecraft:emerald",tag:{ShopItem:true,display:{Name:'[{"translate":"RPG.Shop.Other","color":"yellow"}]'},HideFlags:255}},{Slot:18b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:19b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:20b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:21b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:22b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:23b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:24b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:25b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}},{Slot:26b,Count:1b,id:"minecraft:black_stained_glass_pane",tag:{ShopItem:true}}]}}
#ショップの中のアイテムをクリックしたのか
scoreboard objectives add Core.Shop.IsClickItem dummy
#アイテムが存在しているか
scoreboard objectives add Core.Shop.IsExistItem dummy

tellraw @a[tag=admin] [{"text": "reload finish","color": "gold"}]