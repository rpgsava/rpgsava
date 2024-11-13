

# 足元(範囲item display)と上(block display)にmarkerを召喚
# 下のdisplay 
execute summon item_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/entitys/bottom





# 再帰上限まで呼び出し
scoreboard players remove $recursionCnt Boss.mistcrestLakeBoss.miraculousSwordDance 1
execute if score $recursionCnt Boss.mistcrestLakeBoss.miraculousSwordDance matches 1.. run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/rain_sword/recursion