
# skip場所でなければ普通に剣を出す
execute unless score $skipXPosition Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 summon item_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/sword/nbt
# skip場所にマーカを置く
execute unless score $skipXPosition Boss.mistcrestLakeBoss.miraculousSwordDance matches 0 summon block_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/sword_dance/throw/sword/none_nbt

# 1減らす
scoreboard players remove $skipXPosition Boss.mistcrestLakeBoss.miraculousSwordDance 1
# 次の剣のために位置をずらしておく
scoreboard players add $swordXPosition Boss.mistcrestLakeBoss.miraculousSwordDance 7