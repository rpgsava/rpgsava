#デスポーンしない
data merge entity @s {PersistenceRequired:True}

# 名前を非表示に
data merge entity @s {CustomNameVisible:False}


#最後にファイルパスを持たせる(後にマクロ対応)
data merge entity @s {IsBaby:True,CustomNameVisible:True,Tags:["mistcrestLakeBoss.miraculousSwordDance.rightHand","mistcrestLakeBoss.miraculousSwordDance.aiPart","mistcrestLakeBoss.miraculousSwordDance.bodyDisplay","mistcrestLakeBoss.miraculousSwordDance.Enemy","mistcrestLakeBoss","mistcrestLakeEnemy","sectionFirstEnemy"]}

data merge entity @s {transformation:{right_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},translation:[-0.35f,-0.7f,0.0f]}}



#防具の決定(防御力は変数により決定されるので防具は見た目のみ)
#ここではAI用アマスタなので何もなし
data merge entity @s {ArmorItems:[{},{},{},{}]}

# 見た目の設定
data merge entity @s {item:{id:"minecraft:warped_fungus_on_a_stick",count:1b,components:{custom_model_data:2005}}}

# 自身をAIに乗せる
ride @s mount @e[tag=mistcrestLakeBoss.miraculousSwordDance.leftHand,tag=!Init,limit=1]