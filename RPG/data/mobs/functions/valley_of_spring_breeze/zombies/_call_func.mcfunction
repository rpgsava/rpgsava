
data merge storage mobs:entity {CustomName:'[{"text":"名もなきゾンビ"}]'}

function mobs:_call
data merge entity @s {IsBaby:False,CustomNameVisible:True,Tags:["ValleyOfSpringBreezeZombieZombie","ValleyOfSpringBreezeZombieEnemy","Enemy"]}
data modify entity @s CustomName set from storage mobs:entity CustomName

#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}]}

#初期化タグの付与
tag @s add Init

#HPの付与
scoreboard players set @s Mobs.Health.Max 20
scoreboard players operation @s Mobs.Health.Now = @s Mobs.Health.Max

#攻撃力の付与
scoreboard players set @s Mobs.Attack.Damage 3

#防御力
scoreboard players set @s Mobs.Defence 0

#コインの設定
scoreboard players set @s Mobs.Drop.Coin.Min 1
scoreboard players set @s Mobs.Drop.Coin.Range 1
#経験値
scoreboard players set @s Mobs.Drop.Xp.Health.Min 0
scoreboard players set @s Mobs.Drop.Xp.Health.Range 1
scoreboard players set @s Mobs.Drop.Xp.Mana.Min 1
scoreboard players set @s Mobs.Drop.Xp.Mana.Range 1
scoreboard players set @s Mobs.Drop.Xp.Speed.Min 0
scoreboard players set @s Mobs.Drop.Xp.Speed.Range 0