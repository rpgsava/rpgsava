#デスポーン処理

tp ~ -64 ~
#乱数抽選
#AI削除
tag @s add NoAI
data modify entity @s NoAI set value true
#透明化
effect give @s invisibility infinite 0 true

execute on passengers on passengers run kill @s[type=interaction]
execute on passengers run kill @s[type=interaction]
kill @s