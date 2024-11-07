##使用方法
#実行者(ベクトル代入されるエンティティ)に呼び出させる
#MK.v.ThetaにRotation[0]
#MK.v.PhiにRotation[1]

# 入力 -> [       x,       y,       z] :> [MK.v.vecValue,MK.v.vecValue,MK.v.vecValue]
#         [offset_x,offset_y,offset_z] :> [MK.v.OffsetX,MK.v.OffsetY,MK.v.OffsetZ]
# 出力 -> @s.Motion


##φとΘに方角の生データを代入
execute store result score @s MK.v.Phi run data get entity @s Rotation[0]
execute store result score @s MK.v.Theta run data get entity @s Rotation[1]

##マイナスが扱いずらいので加算
scoreboard players add @s MK.v.Theta 90
scoreboard players add @s[scores={MK.v.Phi=..1}] MK.v.Phi 359

##Θで向いてる方向が上か下かを判定し、booleanで判断
execute as @s[scores={MK.v.Theta=0..90}] run scoreboard players set @s MK.v.ThetaBool 1
execute as @s[scores={MK.v.Theta=90..180}] run scoreboard players set @s MK.v.ThetaBool -1
execute as @s[scores={MK.v.Theta=90..180}] run scoreboard players remove @s MK.v.Theta 180
execute as @s[scores={MK.v.ThetaBool=-1}] run scoreboard players operation @s MK.v.Theta *= @s MK.v.ThetaBool

##φで向いてる方向が前か後ろかを判定し、booleanで判断
execute if entity @s[scores={MK.v.Phi=0..89}] as @s[scores={MK.v.Phi=0..89}] run scoreboard players set @s MK.v.sinBool 1
execute if entity @s[scores={MK.v.Phi=0..89}] as @s[scores={MK.v.Phi=0..89}] run scoreboard players set @s MK.v.cosBool -1
execute if entity @s[scores={MK.v.Phi=90..179}] as @s[scores={MK.v.Phi=90..179}] run scoreboard players set @s MK.v.sinBool -1
execute if entity @s[scores={MK.v.Phi=90..179}] as @s[scores={MK.v.Phi=90..179}] run scoreboard players set @s MK.v.cosBool -1
execute if entity @s[scores={MK.v.Phi=90..179}] as @s[scores={MK.v.Phi=90..179}] run tag @s add MK.v.Reverse
execute if entity @s[scores={MK.v.Phi=90..179}] as @s[scores={MK.v.Phi=90..179}] run scoreboard players remove @s MK.v.Phi 90
execute if entity @s[scores={MK.v.Phi=180..269}] as @s[scores={MK.v.Phi=180..269}] run scoreboard players set @s MK.v.sinBool -1
execute if entity @s[scores={MK.v.Phi=180..269}] as @s[scores={MK.v.Phi=180..269}] run scoreboard players set @s MK.v.cosBool 1
execute if entity @s[scores={MK.v.Phi=180..269}] as @s[scores={MK.v.Phi=180..269}] run scoreboard players remove @s MK.v.Phi 180
execute if entity @s[scores={MK.v.Phi=270..359}] as @s[scores={MK.v.Phi=270..359}] run scoreboard players set @s MK.v.sinBool 1
execute if entity @s[scores={MK.v.Phi=270..359}] as @s[scores={MK.v.Phi=270..359}] run scoreboard players set @s MK.v.cosBool 1
execute if entity @s[scores={MK.v.Phi=270..359}] as @s[scores={MK.v.Phi=270..359}] run tag @s add MK.v.Reverse
execute if entity @s[scores={MK.v.Phi=270..359}] as @s[scores={MK.v.Phi=270..359}] run scoreboard players remove @s MK.v.Phi 270



##cos,sin Θ,φを数値に変換(int)
execute as @s run function milib:vector/sincostheta
execute as @s run function milib:vector/sincosphi

#tellraw @a [{"text": "φ="},{"score":{"name": "@s","objective": "MK.v.Phi"}},{"text": " Θ="},{"score":{"name": "@s","objective": "MK.v.Theta"}}]

##公式にそってx,y,zを導出
execute as @s run scoreboard players operation @s MK.v.MotionX = @s MK.v.VecValue
execute as @s run scoreboard players operation @s MK.v.MotionY = @s MK.v.VecValue
execute as @s run scoreboard players operation @s MK.v.MotionZ = @s MK.v.VecValue
execute as @s run scoreboard players operation @s MK.v.MotionX += @s MK.v.offsetX
execute as @s run scoreboard players operation @s MK.v.MotionY += @s MK.v.offsetY
execute as @s run scoreboard players operation @s MK.v.MotionZ += @s MK.v.offsetZ
execute as @s run scoreboard players operation @s MK.v.MotionX *= @s MK.v.sinTheta
execute as @s run scoreboard players operation @s MK.v.MotionX *= @s MK.v.cosPhi
execute as @s run scoreboard players operation @s MK.v.MotionX *= @s MK.v.sinBool
execute as @s run scoreboard players operation @s MK.v.MotionY *= @s MK.v.cosTheta
execute as @s run scoreboard players operation @s MK.v.MotionY *= @s MK.v.ThetaBool
execute as @s run scoreboard players operation @s MK.v.MotionZ *= @s MK.v.sinTheta
execute as @s run scoreboard players operation @s MK.v.MotionZ *= @s MK.v.sinPhi
execute as @s run scoreboard players operation @s MK.v.MotionZ *= @s MK.v.cosBool

tellraw @a [{"text": "vecvalue="},{"score":{"name": "@s","objective": "MK.v.VecValue"}},{"text": " sinΘ="},{"score":{"name": "@s","objective": "MK.v.sinTheta"}},{"text": " cosΘ="},{"score":{"name": "@s","objective": "MK.v.cosTheta"}}]

execute as @s[tag=!MK.v.Reverse] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s MK.v.MotionZ
execute as @s[tag=!MK.v.Reverse] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s MK.v.MotionY
execute as @s[tag=!MK.v.Reverse] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s MK.v.MotionX

execute as @s[tag=MK.v.Reverse] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s MK.v.MotionZ
execute as @s[tag=MK.v.Reverse] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s MK.v.MotionY
execute as @s[tag=MK.v.Reverse] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s MK.v.MotionX

tellraw @a [{"score":{"name": "@s","objective": "MK.v.MotionZ"}},{"score":{"name": "@s","objective": "MK.v.MotionX"}},{"score":{"name": "@s","objective": "MK.v.MotionY"}}]

tag @s remove MK.v.Reverse 
