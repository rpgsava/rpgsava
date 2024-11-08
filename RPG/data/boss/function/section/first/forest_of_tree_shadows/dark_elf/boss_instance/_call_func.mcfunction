data merge storage mobs:entity {CustomName:'[{"translate":"RPG.Enemy.Boss.ForestOfTreeShadows.DarkElf"}]'}

function mobs:_call
#最後にファイルパスを持たせる(後にマクロ対応)
data merge entity @s {IsBaby:False,CustomNameVisible:True,Tags:["forestOfTreeShadowsBoss","forestOfTreeShadowsEnemy","Enemy","Boss","forestOfTreeShadowsBossDarkElf","section/first/forest_of_tree_shadows/dark_elf"]}
data modify entity @s CustomName set from storage mobs:entity CustomName

#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1b,components:{unbreakable:{show_in_tooltip:false}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}

#初期化タグの付与
tag @s add Init

#HPの付与
scoreboard players set @s Mobs.Health.Max 30
scoreboard players operation @s Mobs.Health.Now = @s Mobs.Health.Max
execute store result bossbar boss:story/forestoftreeshadows/arc max run scoreboard players get @s Mobs.Health.Max
execute store result bossbar boss:story/forestoftreeshadows/arc value run scoreboard players get @s Mobs.Health.Now
#人数増加時のHPを設定
scoreboard players set @s Boss.Health.LoadPlus 30

#攻撃力の付与
scoreboard players set @s Mobs.Attack.Damage 0

#防御力
scoreboard players set @s Mobs.Defence 0

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

#パーティクルの表示
function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/first_paticle/first_paticle_1
