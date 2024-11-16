
# 5tickかけて、腕を回転させる
data merge entity @s {transformation:{right_rotation:{angle:-1.5f,axis:[0.0f,1.0f,0.0f]},scale:[0.8f,0.8f,0.8f],left_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},translation:[-0.35f,-0.7f,0.0f]},interpolation_duration:5,start_interpolation:-1}

# particle 
particle enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 50
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.2 50

# 攻撃用の剣を6方向に投げる
function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/ai/attack/throw_sword/_