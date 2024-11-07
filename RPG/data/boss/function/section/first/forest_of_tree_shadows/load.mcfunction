#もし、まだボスがいなければボスをスポーンさせる
execute if score $forestOfTreeShadowsBoss Boss.IsSpawn = $False Core.Bool run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/call
#もしそうでなければHPの最大値と現在値を計算する
execute if score $forestOfTreeShadowsBoss Boss.IsSpawn = $True Core.Bool as @e[tag=Boss,tag=forestOfTreeShadowsBossDarkElf] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/calc_health
#スポーンしたことにする
scoreboard players operation $forestOfTreeShadowsBoss Boss.IsSpawn = $True Core.Bool
#自身にボスバーが見えるようにする
bossbar set boss:story/forestoftreeshadows/arc players @s