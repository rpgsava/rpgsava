# ボスのスキルコールをする
#        プレイヤーに対して呼び出し
#        引数 > core:message {skill_name : raw_string, skill_char : raw_string ,<skill_detail : raw_string>} 
# skill_charはいらないならなくてもよい(ボスで統一する)

execute if score @s Core.Boss.Skill.IsShowDetail matches 0 run tellraw @s ["",{"text":"========================================\n","color": "#ffc400"},{"text": "[skill] ","color": "yellow"},{"storage":"core:message","nbt":"skill_char","interpret": true},{"storage":"core:message","nbt":"skill_name","interpret": true},"\n",{"text":"========================================","color": "#ffc400"}]
# スキル詳細が有効なら説明を記載
execute if score @s Core.Boss.Skill.IsShowDetail matches 1 run tellraw @s ["",{"text":"========================================\n","color": "#ffc400"},{"text": "[skill] ","color": "yellow"},{"storage":"core:message","nbt":"skill_char","interpret": true},{"storage":"core:message","nbt":"skill_name","interpret": true},"\n",{"text": "[detail] \n","color": "yellow"},{"storage":"core:message","nbt":"skill_detail","interpret": true},"\n",{"text":"========================================","color": "#ffc400"}]
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2