# 自身の場所にパーティクル
particle end_rod ~ ~ ~ 1 1 1 1 20

tp ^ ^ ^3
data merge entity @s {teleport_duration:1}
# summon item_display ~-3.0 ~ ~ {item:{id:"minecraft:apple"},Tags:["test"]}
# summon item_display ~4 ~ ~ {item:{id:"minecraft:golden_apple"},Tags:["test"]}
# ヒット判定
execute positioned ~-3.0 ~ ~-3.5 run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/hit

