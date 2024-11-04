#自身がボス中の場合にボスキャンセルする関数
tag @s remove Boss
#テレポで最初に戻すのでボスの終了タグも取る
function boss:remove_all_ended_tag
#テレポ不可の状態でログアウトなら
tag @s remove ForceTeleport

execute in map:rpg_map run tp @s 0 6 0 90 0
data merge storage core:message {msg:'[{"translate": "RPG.MSG.BossCancel"}]'}
function m_core:message/system

execute if entity @s[tag=Boss.FirstPlains] run function boss:logout/first_plain/1