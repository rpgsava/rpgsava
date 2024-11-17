#デスポーンしない
data merge entity @s {PersistenceRequired:True}
data merge storage mobs:entity {CustomName:'[{"translate":"RPG.Enemy.Boss.MiraculousSwordDance"}]'}

# 名前を表示に
data merge entity @s {CustomNameVisible:True}

#最後にファイルパスを持たせる(後にマクロ対応)
data merge entity @s {IsBaby:True,CustomNameVisible:True,Tags:["mistcrestLakeBoss.miraculousSwordDance","mistcrestLakeBoss.miraculousSwordDance.aiPart","mistcrestLakeBoss.miraculousSwordDance.mainBody","mistcrestLakeBoss.miraculousSwordDance.bodyDisplay","mistcrestLakeBoss.miraculousSwordDance.Enemy","mistcrestLakeBoss","mistcrestLakeEnemy","sectionFirstEnemy","Enemy","Boss","Mobs.EntityHeight.1.0","section/first/mistcrest_lake/miraculous_sword_dance"]}

data merge entity @s {transformation:{right_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},translation:[-0.25f,-0.6f,-0.25f]}}

data modify entity @s CustomName set from storage mobs:entity CustomName


#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
#ここではAI用アマスタなので何もなし
data merge entity @s {ArmorItems:[{},{},{},{}]}

# 見た目の設定
data merge entity @s {item:{id:"minecraft:warped_fungus_on_a_stick",count:1b,components:{custom_model_data:2003}}}

# 自身をAIに乗せる
ride @s mount @e[tag=mistcrestLakeBoss.miraculousSwordDance.rightLeg,tag=!Init,limit=1]

#HPの付与
scoreboard players set @s Mobs.Health.Max 1000
scoreboard players operation @s Mobs.Health.Now = @s Mobs.Health.Max

scoreboard players operation $tmp Boss.Health.LoadPlus = @s Mobs.Health.Max
#回復したhpを追加したプレイヤーに対して保持する
execute as @a[tag=Boss.MistcrestLake.MiraculousSwordDance] unless score @s Players.Boss.AppendHealth matches 0.. run scoreboard players operation @s Players.Boss.AppendHealth = $tmp Boss.Health.LoadPlus
scoreboard players reset $tmp Boss.Health.LoadPlus

execute store result bossbar boss:story/mistcrestlake.miraculous_sword_dance max run scoreboard players get @s Mobs.Health.Max
execute store result bossbar boss:story/mistcrestlake.miraculous_sword_dance value run scoreboard players get @s Mobs.Health.Now
#hp比率の決定
scoreboard players set $hpRatio Boss.mistcrestLakeBoss.miraculousSwordDance 100
scoreboard players set $isCommonAttacking Boss.mistcrestLakeBoss.miraculousSwordDance 0
scoreboard players set $commonMoveTick Boss.mistcrestLakeBoss.miraculousSwordDance 0
scoreboard players set $noAI Boss.mistcrestLakeBoss.miraculousSwordDance 0
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