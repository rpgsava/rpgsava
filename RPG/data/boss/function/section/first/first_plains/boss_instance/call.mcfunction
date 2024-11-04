#召喚処理
## function mobs:first_plain/zombies/call

#その場所を常時読み込み(ログアウトされたここがロードされなくなるとキルの処理が出来ない)
forceload add ~ ~

#スポーン時にボスバーを新規作成
bossbar add boss:story/firstplains [{"text": "アトラス"}]
bossbar set boss:story/firstplains color green

#召喚+ボスバーの設定
execute summon zombie run function boss:section/first/first_plains/boss_instance/_call_func
