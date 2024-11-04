#テレポート選択時
execute if score @s Core.System.Input matches 1 run function map:input/teleport/_
execute if score @s Core.System.Input matches 100..199 run function map:input/teleport/section/first/_

#設定
execute if score @s Core.System.Input matches 2 run function map:input/setting/_
execute if score @s Core.System.Input matches 10000..10010 run function map:input/setting/change

#再度許可
    scoreboard players operation $tmp Core.System.Input = @s Core.System.Input
    scoreboard players operation $tmp Core.System.Input %= $100 Core.Int
    #99以下のメニュー選択時又はセクション選択時は次の項目をクリックする許可を与える
    execute if score @s Core.System.Input matches ..99 run scoreboard players enable @s Core.System.Input
    execute if score @s Core.System.Input matches ..9999 if score $tmp Core.System.Input matches 0 run scoreboard players enable @s Core.System.Input
    #設定変更
    execute if score @s Core.System.Input matches 10000..10010 run scoreboard players enable @s Core.System.Input
scoreboard players set @s Core.System.Input 0