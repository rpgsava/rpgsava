function #math:random
execute store result score $tips Players.Random.Temporary run data get storage math: out
scoreboard players operation $tips Players.Random.Temporary %= $6 Core.Int

execute if score $tips Players.Random.Temporary matches 0 run data merge storage players:tips {out:'[{"text":"死亡すると現在蓄積中のXPがリセットされてしまう"}]'}
execute if score $tips Players.Random.Temporary matches 1 run data merge storage players:tips {out:'[{"text":"この世界では連打による攻撃力減衰は存在しない"}]'}
execute if score $tips Players.Random.Temporary matches 2 run data merge storage players:tips {out:'[{"text":"ボスの討伐時には基本的には入手できないXPが入手できる"}]'}
execute if score $tips Players.Random.Temporary matches 3 run data merge storage players:tips {out:'[{"text":"XPのドロップ量はエネミーにより変化する\\n"},{"text":"経験値が多いエネミーを探そう"}]'}
execute if score $tips Players.Random.Temporary matches 4 run data merge storage players:tips {out:'[{"text":"エネミーによって落としやすいXPの種類は変化する\\n"},{"text":"必要な経験値を集めよう"}]'}
execute if score $tips Players.Random.Temporary matches 5 run data merge storage players:tips {out:'[{"text":"ボスからドロップするアイテムは参加した全員のドロップが表示される\\n"},{"text":"自身のドロップでありますように・・・"}]'}

data merge storage core:message {msg:'[" ",{"text":"✧","color":"red"},{"text":"tips","color":"light_green","bold":true},{"text":"✧\\n","color":"red"},{"storage":"players:tips","nbt":"out","interpret": true}]'}
function m_core:message/system