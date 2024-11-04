#それぞれのボスが既にスポーンしているか
scoreboard objectives add Boss.IsSpawn dummy
#一人当たりのMaxHp
scoreboard objectives add Boss.Health.LoadPlus dummy
#人数増加時の回復値
scoreboard objectives add Boss.Health.LoadHeal dummy

#終了後のアイテム回収時間
scoreboard objectives add Boss.EndTime dummy

#ボスの座標
#alias vector Boss.FirstPlains.1 18.5 12 -29.5