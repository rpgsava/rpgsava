rotate @s facing entity @e[tag=mistcrestLakeBoss.miraculousSwordDance.rainSword.Bottom,tag=!Init,limit=1]
tellraw @a [{"entity":"@e[tag=mistcrestLakeBoss.miraculousSwordDance.rainSword.Bottom,tag=!Init,limit=1]","nbt": "Pos"}]
tag @s add Init
tag @e[tag=mistcrestLakeBoss.miraculousSwordDance.rainSword.Bottom,tag=!Init,limit=1] add Init