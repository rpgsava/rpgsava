#その場所を常時読み込み(ログアウトされたここがロードされなくなるとキルの処理が出来ない)
forceload add 25131 25016 25179 25064 

#スポーン時にボスバーを新規作成
bossbar add boss:story/forestoftreeshadows/arc [{"text": "Arc"}]
bossbar set boss:story/forestoftreeshadows/arc color purple

#召喚+ボスバーの設定
execute summon armor_stand run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/_call_func