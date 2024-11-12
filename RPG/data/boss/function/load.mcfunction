#それぞれのボスが既にスポーンしているか
scoreboard objectives add Boss.IsSpawn dummy
#一人当たりのMaxHp
scoreboard objectives add Boss.Health.LoadPlus dummy
#人数増加時の回復値
scoreboard objectives add Boss.Health.LoadHeal dummy

#終了後のアイテム回収時間
scoreboard objectives add Boss.EndTime dummy

# tickカウント
scoreboard objectives add Boss.Tick dummy

# !> 以下にボスが使うスコアの定義
#   ボス自体に変数が必要な場合に定義する 
#   例えばワールドtickが必要な場合にボスに持たせるのはオブジェクトとしておかしいのでここに持たせてはいけない
#   反面ボスの攻撃に利用する乱数等はボス自身の値といえるのでここに定義してもよい

## スコア名は Boss.<エリア名キャメルケース>.<ボス名キャメルケース>(1ボス当たり1scoreのみを用いる)
## また適切にresetを行いメモリを開放する
    scoreboard objectives add Boss.mistcrestLakeBoss.miraculousSwordDance dummy

# !> end

#ボスの座標
#alias vector Boss.FirstPlains.1 18.5 12 -29.5