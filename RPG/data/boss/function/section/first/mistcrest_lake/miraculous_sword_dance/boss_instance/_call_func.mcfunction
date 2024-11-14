#デスポーンしない
data merge entity @s {PersistenceRequired:True}


data merge storage mobs:entity {CustomName:'[{"translate":"RPG.Enemy.Boss.MiraculousSwordDance"}]'}


#最後にファイルパスを持たせる(後にマクロ対応)
data merge entity @s {IsBaby:False,CustomNameVisible:True,Tags:["mistcrestLakeBoss.miraculousSwordDance","mistcrestLakeBoss.miraculousSwordDance.Enemy","mistcrestLakeBoss","Mobs.EntityHeight.1.0","mistcrestLakeEnemy","sectionFirstEnemy","Enemy","Boss","section/first/mistcrest_lake/miraculous_sword_dance"]}
data modify entity @s CustomName set from storage mobs:entity CustomName

# 透明化
data merge entity @s {Invisible:True}

#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1b,components:{unbreakable:{show_in_tooltip:false},custom_model_data:2001}}],Invulnerable:1b}

#初期化タグの付与
tag @s add Init

#HPの付与
scoreboard players set @s Mobs.Health.Max 1000
scoreboard players operation @s Mobs.Health.Now = @s Mobs.Health.Max
execute store result bossbar boss:story/mistcrestlake.miraculous_sword_dance max run scoreboard players get @s Mobs.Health.Max
execute store result bossbar boss:story/mistcrestlake.miraculous_sword_dance value run scoreboard players get @s Mobs.Health.Now
#hp比率の決定
scoreboard players set $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance 100
#人数増加時のHPを設定
scoreboard players set @s Boss.Health.LoadPlus 1000

#攻撃力の付与
scoreboard players set @s Mobs.Attack.Damage 20

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