#もし、まだボスがいなければボスをスポーンさせる
execute if score $firstPlainsBoss Boss.IsSpawn = $False Core.Bool run function boss:section/first/first_plains/boss_instance/call
#もしそうでなければHPの最大値と現在値を計算する
execute if score $firstPlainsBoss Boss.IsSpawn = $True Core.Bool as @e[tag=Boss,tag=firstPlainsBoss] run function boss:section/first/first_plains/boss_instance/calc_health
#スポーンしたことにする
scoreboard players operation $firstPlainsBoss Boss.IsSpawn = $True Core.Bool

#自身にボスバーが見えるようにする
bossbar set boss:story/firstplains players @s