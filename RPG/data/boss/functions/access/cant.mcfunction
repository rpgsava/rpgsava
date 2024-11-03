#アクセス済にする
scoreboard players operation @s Map.Boss.CanStart = $False Core.Bool
#メッセージの表示
data merge storage core:message {msg:'[{"translate":"RPG.MSG.BossEndAfterError"}]'}
function m_core:message/system