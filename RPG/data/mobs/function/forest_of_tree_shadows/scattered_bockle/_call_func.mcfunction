data merge entity @s {PersistenceRequired:true}
data merge storage mobs:entity {CustomName:'[{"text":"scatterd_bockle"}]'}

#透明にする
data merge entity @s {Invisible:true}

# 当たり判定の付与
# 判定サイズの設定
data merge storage mobs:hit {Width:1.0f,LowPlHeight:-2.0f,HighPlHeight:0.0f}
function mobs:_call
data merge entity @s {IsBaby:False,CustomNameVisible:True,Tags:["forestOfTreeShadowsScatteredBockle","forestOfTreeShadowsEnemy","sectionFirstEnemy","Enemy","Mobs.EntityHeight.1.0"]}
data modify entity @s CustomName set from storage mobs:entity CustomName

#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1b,components: {"custom_model_data": 2000}}],ArmorDropChances:[0.0,0.0,0.0,0.0]}

#モブの位置をブレさせる
function mobs:_common/spawn/rand_place

#初期化タグの付与
tag @s add Init

# AI検知範囲の設定
scoreboard players set @s Mobs.Hate.Range 32

# uuidのセット
execute store result score @s Mobs.Uuid_0 run data get entity @s UUID[0]

#HPの付与
scoreboard players set @s Mobs.Health.Max 35
scoreboard players operation @s Mobs.Health.Now = @s Mobs.Health.Max

#攻撃力の付与
scoreboard players set @s Mobs.Attack.Damage 15

#コインの設定
scoreboard players set @s Mobs.Drop.Coin.Min 5
scoreboard players set @s Mobs.Drop.Coin.Range 5
#経験値
scoreboard players set @s Mobs.Drop.Xp.Health.Min 1
scoreboard players set @s Mobs.Drop.Xp.Health.Range 3
scoreboard players set @s Mobs.Drop.Xp.Mana.Min 1
scoreboard players set @s Mobs.Drop.Xp.Mana.Range 2
scoreboard players set @s Mobs.Drop.Xp.Speed.Min 1
scoreboard players set @s Mobs.Drop.Xp.Speed.Range 3