tellraw @a [{"text": "=====================================================\n\n","color": "aqua"},{"text": "mikatan lib を初期化しています","color": "yellow"}]
    #Θとφの本体
    scoreboard objectives add MK.v.Theta dummy
    scoreboard objectives add MK.v.Phi dummy
    #Θとφのsincos計算スコア
    scoreboard objectives add MK.v.sinTheta dummy
    scoreboard objectives add MK.v.cosTheta dummy
    scoreboard objectives add MK.v.sinPhi dummy
    scoreboard objectives add MK.v.cosPhi dummy
    #Theta マイナスプラス判定
    scoreboard objectives add MK.v.ThetaBool dummy

    #東西南北判定スコア
    scoreboard objectives add MK.v.sinBool dummy
    scoreboard objectives add MK.v.cosBool dummy

    #motionスコア
    scoreboard objectives add MK.v.MotionX dummy
    scoreboard objectives add MK.v.MotionY dummy
    scoreboard objectives add MK.v.MotionZ dummy
    scoreboard objectives add MK.v.VecValue dummy

    #offsetスコア
    scoreboard objectives add MK.v.OffsetX dummy
    scoreboard objectives add MK.v.OffsetY dummy
    scoreboard objectives add MK.v.OffsetZ dummy
tellraw @a [{"text": "initialize vector method...","color": "green","italic": true}]

scoreboard objectives add MK.constants dummy
scoreboard players set $360 MK.constants 360

tellraw @a [{"text": "初期化が完了しました！\n\n","color": "yellow"}]
tellraw @a [{"text": "ver : mikatan lib ver1.1\n\n","color": "gold"},{"text": "     /function milib:_explanation\n","color": "light_purple"},{"text": "     を実行すると各メソッドの使用方法が表示されます","color": "gold"},{"text":"\n\n=====================================================","color": "aqua"}]