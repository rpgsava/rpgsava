# 前に球を放つ
summon armor_stand ~ ~1 ~ {ArmorItems:[{},{},{},{id:"minecraft:cocoa_beans",count:1b}],Tags:["forestOfTreeShadowsScatteredBockleBullet","forestOfTreeShadowsEnemy","sectionFirstEnemy","Enemy"],Small:True}
execute as @e[tag = forestOfTreeShadowsScatteredBockleBullet, tag=!Init , sort = nearest, limit = 1] run function mobs:forest_of_tree_shadows/scattered_bockle/action_func/bullet/bullet_entity
