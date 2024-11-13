# tick loopを100tickに切り分けそれをスキルループとして扱う
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance = $mistcrestLakeBoss.miraculousSwordDance Boss.Tick
scoreboard players operation $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance %= $200 Core.Int

# 上空に剣を召喚
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/embers_of_flame/put_sword

# 170なら飛ぶ先と飛ぶもとにmarkerを召喚しておく
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 0..170 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/embers_of_flame/put_fire

# 199ならオブジェクト削除
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 199 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/embers_of_flame/players/recive_sword
execute if score $skill_loop Boss.mistcrestLakeBoss.miraculousSwordDance matches 199 as @e[tag=mistcrestLakeBoss.miraculousSwordDance.embersOfFlame.Sword] at @s run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/embers_of_flame/delete_sword

# プレイヤーがヒットしたなら
execute as @a[tag=Boss.MistcrestLake.MiraculousSwordDance] at @s if block ~ ~ ~ fire run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/embers_of_flame/players/hit