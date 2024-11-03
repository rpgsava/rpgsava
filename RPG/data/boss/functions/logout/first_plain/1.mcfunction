#自身のタグを削除
tag @s remove Boss.FirstPlains

#もし、自分のほかにそのボスを遊んでいるプレイヤーが存在しないならボスの終了処理をする
execute unless entity @a[tag=Boss.FirstPlains] as @e[tag=firstPlainsBoss] run function boss:section/first/first_plains/death