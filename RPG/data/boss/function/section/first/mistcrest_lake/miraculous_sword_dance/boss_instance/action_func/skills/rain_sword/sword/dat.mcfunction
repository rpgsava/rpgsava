#既に回転と座標は入っているはず

# 剣の見た目に変更
# z軸に135度、x軸に-90度回転
data merge entity @s {transformation:{right_rotation:{angle:2.35f,axis:[0f,0f,1f]},scale:[2f,2f,2f],left_rotation:{angle:-1.57f,axis:[1f,0f,0f]},translation:[0f,0f,0f]}}
data merge entity @s {item:{id:"minecraft:iron_sword",count:1b},Tags:["mistcrestLakeBoss.miraculousSwordDance.rainSword","mistcrestLakeBoss.miraculousSwordDance.rainSword.hit"]}

rotate @s ~ ~

# 20tickかけて地面に移動
data merge entity @s {start_interpolation:-1,teleport_duration:10}