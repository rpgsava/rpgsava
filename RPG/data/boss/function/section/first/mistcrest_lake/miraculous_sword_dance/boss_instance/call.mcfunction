#召喚処理
## function mobs:first_plain/zombies/call

#その場所を常時読み込み(ログアウトされたここがロードされなくなるとキルの処理が出来ない)
forceload add ~-50 ~-50 ~50 ~50

#スポーン時にボスバーを新規作成
bossbar add boss:story/mistcrestlake.miraculous_sword_dance [{"translate": "RPG.Enemy.Boss.MiraculousSwordDance"}]
bossbar set boss:story/mistcrestlake.miraculous_sword_dance color green

# ダメージの設定
function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/config/normal

#召喚+ボスバーの設定
execute summon armor_stand run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/create_body/main_body
# execute summon armor_stand run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/_call_func

# tickの設定
scoreboard players set $mistcrestLakeBoss.miraculousSwordDance Boss.Tick 0