#自身のuuidを取得して
data modify storage core:check p_uuid set from entity @s
#同じかどうかを✅(成功なら1、失敗なら0)
execute store success score @s Players.IsSame run data modify storage core:check p_uuid set from storage core:check UUID