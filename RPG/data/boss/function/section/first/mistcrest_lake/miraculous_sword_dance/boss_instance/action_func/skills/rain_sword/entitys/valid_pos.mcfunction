

execute store result storage boss:mistcrest_lake.miraculous_sword_dance rain_x double 1 run scoreboard players add $rain_posx Boss.mistcrestLakeBoss.miraculousSwordDance 25000
execute store result storage boss:mistcrest_lake.miraculous_sword_dance rain_z double 1 run scoreboard players add $rain_posz Boss.mistcrestLakeBoss.miraculousSwordDance 30000
# 代入
data modify entity @s Pos[0] set from storage boss:mistcrest_lake.miraculous_sword_dance rain_x
data modify entity @s Pos[1] set value 0.5
data modify entity @s Pos[2] set from storage boss:mistcrest_lake.miraculous_sword_dance rain_z

#ダメージ値の設定
scoreboard players set @s Mobs.Attack.Damage 20

# 上を召喚
# 後に上のblock displayのrotationから攻撃方向を取る(angleによる回転は使わない -> 値が変換され戻すのが大変なので
execute at @s summon block_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/entitys/top

scoreboard players reset $rain_posx Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players reset $rain_posz Boss.mistcrestLakeBoss.miraculousSwordDance
scoreboard players reset $rain_posc Boss.mistcrestLakeBoss.miraculousSwordDance