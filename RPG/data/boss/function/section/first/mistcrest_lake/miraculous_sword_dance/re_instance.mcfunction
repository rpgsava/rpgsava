# まず、ボスを終了させる
execute as @e[tag=mistcrestLakeBoss.miraculousSwordDance] run function boss:section/first/mistcrest_lake/miraculous_sword_dance/death
# そのうえで開始する
function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/call