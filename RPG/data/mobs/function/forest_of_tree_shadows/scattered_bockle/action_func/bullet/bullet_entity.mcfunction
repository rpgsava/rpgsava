data merge entity @s {PersistenceRequired:true}
# 名前を非表示に
data modify entity @s CustomNameVisible set value false

# 当たり判定の付与
# 当たり判定いらない
# function mobs:_call
data merge entity @s {IsBaby:False,CustomNameVisible:False,Tags:["forestOfTreeShadowsScatteredBockleBullet","forestOfTreeShadowsEnemy","Enemy"]}
data modify entity @s CustomName set from storage mobs:entity CustomName

#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1b,components: {"custom_model_data": 2000}}],ArmorDropChances:[0.0,0.0,0.0,0.0]}

#初期化タグの付与
tag @s add Init

#HPの付与
scoreboard players set @s Mobs.Health.Max 1
scoreboard players operation @s Mobs.Health.Now = @s Mobs.Health.Max

#攻撃力の付与
scoreboard players set @s Mobs.Attack.Damage 0

#コインの設定
scoreboard players set @s Mobs.Drop.Coin.Min 0
scoreboard players set @s Mobs.Drop.Coin.Range 0
#経験値
scoreboard players set @s Mobs.Drop.Xp.Health.Min 0
scoreboard players set @s Mobs.Drop.Xp.Health.Range 0
scoreboard players set @s Mobs.Drop.Xp.Mana.Min 0
scoreboard players set @s Mobs.Drop.Xp.Mana.Range 0
scoreboard players set @s Mobs.Drop.Xp.Speed.Min 0
scoreboard players set @s Mobs.Drop.Xp.Speed.Range 0