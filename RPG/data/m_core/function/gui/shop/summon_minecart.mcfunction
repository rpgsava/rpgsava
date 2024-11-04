#idをminecartにセット(このidを元にtpする)
scoreboard players operation @s Core.PlayerId = $tmp Core.PlayerId

tag @s add Minecart.Shop

#初期画面であることを明示
tag @s add Minecart.Shop.InitDisplay

#上にmarkerを乗せる
summon marker ~ ~ ~ {Tags:["Marker.Shop"]}
ride @e[tag=Marker.Shop,tag=!Init,limit=1] mount @s
tag @e[tag=Marker.Shop,tag=!Init] add Init

#マーカーにアイテムデータを保持させる
execute on passengers run data modify entity @s data.Weapons set from storage core:shop Weapons
execute on passengers run data modify entity @s data.Armors set from storage core:shop Armors
execute on passengers run data modify entity @s data.Fruits set from storage core:shop Fruits
execute on passengers run data modify entity @s data.Others set from storage core:shop Others

data merge storage core:shop {Weapons:[]}
data merge storage core:shop {Fruits:[]}
data merge storage core:shop {Armors:[]}
data merge storage core:shop {Others:[]}

#無重力/無敵
data merge entity @s {NoGravity:1b,Invulnerable:1b}

#ショップを開いている状態にする
scoreboard players set @a[tag=Shop.Practitioner] Core.Shop.IsSummonMinecart 1