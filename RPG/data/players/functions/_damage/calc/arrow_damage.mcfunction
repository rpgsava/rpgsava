#ダメージのリセット
scoreboard players set @s Players.Attack.Damage 1

#メインハンド攻撃力の取得
# {RPG:{Damage:int,Attribute:int,weakAttr:int,Defence:int}} で表現し
execute store result score @s Players.Attack.Calc run data get entity @s SelectedItem.tag.RPG.ArrowDamage
#ショートボウを使っていなければ
execute if score @s Players.Use.ShortBow matches 0 run scoreboard players operation @s Players.Attack.Damage += @s Players.Attack.Calc
#ショートボウなら
execute store result score @s Players.Attack.Calc run data get entity @s SelectedItem.tag.RPG.ShortArrowDamage
execute if score @s Players.Use.ShortBow matches 1.. run scoreboard players operation @s Players.Attack.Damage += @s Players.Attack.Calc
execute if score @s Players.Use.ShortBow matches 1.. run scoreboard players remove @s Players.Use.ShortBow 1

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

advancement revoke @s only players:inventory/use_arrow
