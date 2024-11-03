#ダメージのリセット
scoreboard players set @s Players.Attack.Damage 1

#メインハンド攻撃力の取得
# {RPG:{Damage:int,Attribute:int,weakAttr:int,Defence:int}} で表現し
execute store result score @s Players.Attack.Calc run data get entity @s SelectedItem.tag.RPG.Damage
scoreboard players operation @s Players.Attack.Damage += @s Players.Attack.Calc

#防具攻撃力の取得
execute store result score @s Players.Attack.Calc run data get entity @s Inventory[{Slot:103b}].tag.RPG.Damage
scoreboard players operation @s Players.Attack.Damage += @s Players.Attack.Calc
execute store result score @s Players.Attack.Calc run data get entity @s Inventory[{Slot:102b}].tag.RPG.Damage
scoreboard players operation @s Players.Attack.Damage += @s Players.Attack.Calc
execute store result score @s Players.Attack.Calc run data get entity @s Inventory[{Slot:101b}].tag.RPG.Damage
scoreboard players operation @s Players.Attack.Damage += @s Players.Attack.Calc
execute store result score @s Players.Attack.Calc run data get entity @s Inventory[{Slot:100b}].tag.RPG.Damage
scoreboard players operation @s Players.Attack.Damage += @s Players.Attack.Calc

#解放
scoreboard players reset @s Players.Attack.Calc