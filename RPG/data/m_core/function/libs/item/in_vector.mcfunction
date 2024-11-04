function #math:random
execute store result score $value Core.Value.Rand run data get storage math: out
scoreboard players operation $value Core.Value.Rand %= $50 Core.Int
scoreboard players add $value Core.Value.Rand 50
execute if predicate m_core:chance/0.5 run scoreboard players operation $value Core.Value.Rand *= $-1 Core.Int
execute store result entity @s Motion[0] double 0.001 run scoreboard players get $value Core.Value.Rand

function #math:random
execute store result score $value Core.Value.Rand run data get storage math: out
scoreboard players operation $value Core.Value.Rand %= $100 Core.Int
scoreboard players add $value Core.Value.Rand 300
execute if predicate m_core:chance/0.5 run scoreboard players operation $value Core.Value.Rand *= $-1 Core.Int
execute store result entity @s Motion[1] double 0.001 run scoreboard players get $value Core.Value.Rand

function #math:random
execute store result score $value Core.Value.Rand run data get storage math: out
scoreboard players operation $value Core.Value.Rand %= $50 Core.Int
scoreboard players add $value Core.Value.Rand 50
execute if predicate m_core:chance/0.5 run scoreboard players operation $value Core.Value.Rand *= $-1 Core.Int
execute store result entity @s Motion[2] double 0.001 run scoreboard players get $value Core.Value.Rand