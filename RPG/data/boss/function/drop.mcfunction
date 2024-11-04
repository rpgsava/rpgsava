#死亡時の処理

#・HPが0を下回っていたなら呼び出される
#・経験値とコインを抽選し表示
#・自身のAIを削除し、透明になる
#・アイテムをドロップし対象者に吸いよさせる
#・プレイヤーにテレポートを表示する
#・自身を消滅させる
# function mobs:_death

tag @a[tag=Receive.BossDrop] add Boss.Ended

#乱数抽選
#AI削除
tag @s add NoAI
data modify entity @s NoAI set value true
#透明化
effect give @s invisibility infinite 0 true

#アイテムをドロップ
summon item ~ ~0.5 ~ {PickupDelay:500,Item:{Count:1b,id:"minecraft:lapis_block",tag:{Enchantments:[{}]}},Age:5900,Tags:["InsertVector"]}
summon item ~ ~0.5 ~ {PickupDelay:500,Item:{Count:1b,id:"minecraft:gold_nugget"},Age:5900,Tags:["InsertVector"]}
#アイテムにVectorを代入する
execute as @e[tag=InsertVector] at @s run function m_core:libs/item/in_vector
tag @e[tag=InsertVector] remove InsertVector

#コインの抽選
    #health
    scoreboard players add @s Mobs.Drop.Coin.Range 1
    function #math:random
    execute store result score $GainCoin Core.Coin run data get storage math: out
    scoreboard players operation $GainCoin Core.Coin %= @s Mobs.Drop.Coin.Range
    scoreboard players operation $GainCoin Core.Coin += @s Mobs.Drop.Coin.Range
    execute if score $GainCoin Core.Coin matches 1.. as @a[tag=Receive.BossDrop,limit=1] run function m_core:coin/_add
#経験値の抽選
    #health
    scoreboard players add @s Mobs.Drop.Xp.Health.Range 1
    function #math:random
    execute store result score $Health_Xp Core.Lv.Xp.Now.Health run data get storage math: out
    scoreboard players operation $Health_Xp Core.Lv.Xp.Now.Health %= @s Mobs.Drop.Xp.Health.Range
    scoreboard players operation $Health_Xp Core.Lv.Xp.Now.Health += @s Mobs.Drop.Xp.Health.Min
    execute if score $Health_Xp Core.Lv.Xp.Now.Health matches 1.. as @a[tag=Receive.BossDrop,limit=1] run function m_core:lv/add_xp/health
    #mana
    scoreboard players add @s Mobs.Drop.Xp.Mana.Range 1
    function #math:random
    execute store result score $Mana_Xp Core.Lv.Xp.Now.Mana run data get storage math: out
    scoreboard players operation $Mana_Xp Core.Lv.Xp.Now.Mana %= @s Mobs.Drop.Xp.Mana.Range
    scoreboard players operation $Mana_Xp Core.Lv.Xp.Now.Mana += @s Mobs.Drop.Xp.Mana.Min
    execute if score $Mana_Xp Core.Lv.Xp.Now.Mana matches 1.. as @a[tag=Receive.BossDrop,limit=1] run function m_core:lv/add_xp/mana
    #speed
    scoreboard players add @s Mobs.Drop.Xp.Speed.Range 1
    function #math:random
    execute store result score $Speed_Xp Core.Lv.Xp.Now.Speed run data get storage math: out
    scoreboard players operation $Speed_Xp Core.Lv.Xp.Now.Speed %= @s Mobs.Drop.Xp.Speed.Range
    scoreboard players operation $Speed_Xp Core.Lv.Xp.Now.Speed += @s Mobs.Drop.Xp.Speed.Min
    # tellraw @a [{"selector":"@a[tag=Receive.BossDrop,limit=1]"}]
    execute if score $Speed_Xp Core.Lv.Xp.Now.Speed matches 1.. as @a[tag=Receive.BossDrop,limit=1] run function m_core:lv/add_xp/speed

#GUI表示
execute summon marker run function mobs:view_plate/kill

#テレポート
execute as @a[tag=Receive.BossDrop] run function map:story/_marker/do_teleport/force_access

execute on passengers on passengers run kill @s[type=interaction]
execute on passengers run kill @s[type=interaction]
kill @s