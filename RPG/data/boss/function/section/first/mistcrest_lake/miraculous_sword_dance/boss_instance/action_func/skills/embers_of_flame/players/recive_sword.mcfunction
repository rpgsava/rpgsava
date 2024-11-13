# ダメージをサイズの1/3として
execute store result score $dmg Mobs.Attack.Damage run scoreboard players operation $swordScale Boss.mistcrestLakeBoss.miraculousSwordDance /= $3 Core.Int
# タグをつけて
tag @a[tag=Boss.MistcrestLake.MiraculousSwordDance] add Mobs.Command.Attacked
# ダメージを与える
execute as @a[tag=Boss.MistcrestLake.MiraculousSwordDance] run function mobs:_damage/_constant_player