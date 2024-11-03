scoreboard players enable @s Core.System.Input
tellraw @s [{"text":"[","color":"green"},{"text": "テレポート","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 1"}},{"text": "]","color":"green"}]
tellraw @s [{"text":"[","color":"green"},{"text": "各種設定","bold":true,"clickEvent": {"action":"run_command","value": "/trigger Core.System.Input set 2"}},{"text": "]","color":"green"}]
scoreboard players operation @s Map.Teleport.IsViewTeleport = $False Core.Bool