#デスポーンしない
data merge entity @s {PersistenceRequired:True}


data merge storage mobs:entity {CustomName:'[{"translate":"RPG.Enemy.Boss.FirstPlains"}]'}

function mobs:_call
#最後にファイルパスを持たせる(後にマクロ対応)
data merge entity @s {IsBaby:False,CustomNameVisible:True,Tags:["firstPlainsBoss","firstPlainEnemy","Enemy","Boss","section/first/first_plains"]}
data modify entity @s CustomName set from storage mobs:entity CustomName

#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}]}

#初期化タグの付与
tag @s add Init

#HPの付与
scoreboard players set @s Mobs.Health.Max 20
scoreboard players operation @s Mobs.Health.Now = @s Mobs.Health.Max
execute store result bossbar boss:story/firstplains max run scoreboard players get @s Mobs.Health.Max
execute store result bossbar boss:story/firstplains value run scoreboard players get @s Mobs.Health.Now
#人数増加時のHPを設定
scoreboard players set @s Boss.Health.LoadPlus 20

#攻撃力の付与
scoreboard players set @s Mobs.Attack.Damage 3

#防御力
scoreboard players set @s Mobs.Defence 0

#コインの設定
scoreboard players set @s Mobs.Drop.Coin.Min 3
scoreboard players set @s Mobs.Drop.Coin.Range 1
#経験値
scoreboard players set @s Mobs.Drop.Xp.Health.Min 0
scoreboard players set @s Mobs.Drop.Xp.Health.Range 2
scoreboard players set @s Mobs.Drop.Xp.Mana.Min 0
scoreboard players set @s Mobs.Drop.Xp.Mana.Range 4
scoreboard players set @s Mobs.Drop.Xp.Speed.Min 0
scoreboard players set @s Mobs.Drop.Xp.Speed.Range 1