#最大値から表示幅を計算
execute if score @s Core.Lv.Main.Speed matches 100..999 run data merge storage core:actionbar/xp {lv:'[{"text":"\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Main.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Main.Speed matches 10..99 run data merge storage core:actionbar/xp {lv:'[{"text":"\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Main.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Main.Speed matches 0..9 run data merge storage core:actionbar/xp {lv:'[{"text":"\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Main.Speed","name":"@s"},"font":"default"}]'}

#必要経験値
execute if score @s Core.Lv.Xp.Need.Speed matches 10000.. run data merge storage core:actionbar/xp {need:'[{"text":"\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Need.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Xp.Need.Speed matches 1000..9999 run data merge storage core:actionbar/xp {need:'[{"text":"\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Need.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Xp.Need.Speed matches 100..999 run data merge storage core:actionbar/xp {need:'[{"text":"\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Need.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Xp.Need.Speed matches 10..99 run data merge storage core:actionbar/xp {need:'[{"text":"\\uF828\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Need.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Xp.Need.Speed matches 0..9 run data merge storage core:actionbar/xp {need:'[{"text":"\\uF828\\uF828\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Need.Speed","name":"@s"},"font":"default"}]'}
#現在経験値
execute if score @s Core.Lv.Xp.Now.Speed matches 10000.. run data merge storage core:actionbar/xp {now:'[{"text":"\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Now.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Xp.Now.Speed matches 1000..9999 run data merge storage core:actionbar/xp {now:'[{"text":"\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Now.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Xp.Now.Speed matches 100..999 run data merge storage core:actionbar/xp {now:'[{"text":"\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Now.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Xp.Now.Speed matches 10..99 run data merge storage core:actionbar/xp {now:'[{"text":"\\uF828\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Now.Speed","name":"@s"},"font":"default"}]'}
execute if score @s Core.Lv.Xp.Now.Speed matches 0..9 run data merge storage core:actionbar/xp {now:'[{"text":"\\uF828\\uF828\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Lv.Xp.Now.Speed","name":"@s"},"font":"default"}]'}

#間と前の表示名
data merge storage core:actionbar/xp {slash:'"/"',name:'{"text":"Speed Lv","color":"aqua"}',colon:'"["',end:'"]"',end_space:'{"text":"\\uF82A\\uF828\\uF826","font":"space"}'}

function m_core:actionbar/display/lv/remove_view_time