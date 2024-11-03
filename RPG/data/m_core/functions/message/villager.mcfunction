tellraw @s ["",{"text": "[村人]","color": "yellow"},{"storage":"core:message","nbt":"msg","interpret": true}]
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
scoreboard players reset @s Map.Story.TalkVillager