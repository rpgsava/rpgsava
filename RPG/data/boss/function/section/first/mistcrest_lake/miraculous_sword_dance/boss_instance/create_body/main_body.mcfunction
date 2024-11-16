#デスポーンしない
data merge entity @s {PersistenceRequired:True}


data merge storage mobs:entity {CustomName:'[{"translate":"RPG.Enemy.Boss.MiraculousSwordDance"}]'}


#最後にファイルパスを持たせる(後にマクロ対応)
data merge entity @s {IsBaby:True,CustomNameVisible:True,Tags:["mistcrestLakeBoss.miraculousSwordDance.mainAI","mistcrestLakeBoss.miraculousSwordDance.aiPart","mistcrestLakeBoss.miraculousSwordDance.Enemy","mistcrestLakeBoss","mistcrestLakeEnemy","sectionFirstEnemy"]}
data modify entity @s CustomName set from storage mobs:entity CustomName

# 透明化
data merge entity @s {Invisible:True}

#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
#ここではAI用アマスタなので何もなし
data merge entity @s {ArmorItems:[{},{},{},{}],Invulnerable:1b}


# 足/手の召喚とride
execute summon item_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/create_body/left_hand
execute summon item_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/create_body/right_hand
execute summon item_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/create_body/left_leg
execute summon item_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/create_body/right_leg
execute summon item_display run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/create_body/main_body_look

tag @e[tag=mistcrestLakeBoss.miraculousSwordDance.bodyDisplay] add Init

ride @e[tag=mistcrestLakeBoss.miraculousSwordDance,limit=1,tag=!Init] mount @s

#初期化タグの付与
tag @s add Init