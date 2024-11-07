#自身のタグを削除
tag @s remove Boss.Ended.forestoftreeshadows

#もし、自分のほかにそのボスを遊んでいるプレイヤーが存在しないならボスの終了処理をする
execute unless entity @a[tag=Boss.Ended.forestOfTreeShadows.BossDarkElf] as @e[tag=forestOfTreeShadowsBossDarkElf] run function boss:section/first/forest_of_tree_shadows/death