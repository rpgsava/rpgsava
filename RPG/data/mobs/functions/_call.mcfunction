#モブ召喚時の共通処理

effect give @s resistance infinite 4 true
#interactionを乗せる
summon interaction ~ ~ ~ {height:-1.7,width:1.0,Tags:["LowPl"]}
summon interaction ~ ~ ~ {height:0.8,width:1.0,Tags:["HighPl"]}
ride @e[type=interaction,tag=!Init,tag=LowPl,limit=1,sort=nearest] mount @s
execute on passengers run tag @s add Init
execute on passengers run ride @e[type=interaction,tag=!Init,limit=1,sort=nearest,tag=HighPl] mount @s
execute on passengers on passengers run tag @s add Init