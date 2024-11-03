#最初に全てのmarkerに対して自身のUUIDと同じUUIDを持っているかをチェックする
execute as @e[tag=RespownMarker] run function players:death/uuid_check
#自身をsurvivalに戻す
gamemode survival
#deathタグの削除
tag @s remove Death