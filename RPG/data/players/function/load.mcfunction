scoreboard objectives add Players.Health.Max dummy
scoreboard objectives add Players.Health.Now dummy

scoreboard objectives add Players.Attack.Damage dummy

scoreboard objectives add Players.Attack.Calc dummy

scoreboard objectives add Players.Defence dummy

#攻撃したプレイヤーとモブから見た攻撃されたプレイヤーが一致しているか
scoreboard objectives add Players.Attack.PlayerCheck dummy

scoreboard objectives add Players.Death.CoolTime dummy
scoreboard objectives add Players.Death.UUID dummy

#乱数保管変数
scoreboard objectives add Players.Random.Temporary dummy

#ログイン時間保持
scoreboard objectives add Players.Login.SumTime custom:play_time
scoreboard objectives add Players.Login.NowTime dummy
scoreboard objectives add Players.Login.LeaveCheck custom:leave_game

#コイン数
scoreboard objectives add Players.Coin dummy

#満腹度関連
scoreboard objectives add Players.Food.Exhaustion dummy

#回復
scoreboard objectives add Players.Health.Heal dummy
#回復倍率(+100% = 2000)
scoreboard objectives add Players.Health.Recovery dummy
scoreboard objectives add Players.Health.CoolTime dummy

scoreboard objectives add Players.Mana.Tick dummy

#弓のダメージ
scoreboard objectives add Players.Attack.ArrowDamage dummy

scoreboard objectives add Players.Use.ShortBow dummy

scoreboard objectives add Players.IsSame dummy