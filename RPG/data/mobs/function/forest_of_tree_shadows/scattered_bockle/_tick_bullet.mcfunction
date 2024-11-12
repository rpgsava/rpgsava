# もし攻撃対象がいれば
execute if entity @a[distance=..1] run function mobs:forest_of_tree_shadows/scattered_bockle/action_func/bullet/hit

# 自身が床に落ちたら
execute if entity @s[nbt={OnGround:true}] run kill @s