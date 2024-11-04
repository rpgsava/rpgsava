#最大値から表示幅を計算
execute if score @s Core.Stat.ManaMax matches 10000.. run data merge storage core:actionbar/mana {max:'[{"text":"\\uF824","font":"space"},{"score":{"objective":"Core.Stat.ManaMax","name":"@s"},"font":"mana"}]'}
execute if score @s Core.Stat.ManaMax matches 1000..9999 run data merge storage core:actionbar/mana {max:'[{"text":"\\uF828\\uF825","font":"space"},{"score":{"objective":"Core.Stat.ManaMax","name":"@s"},"font":"mana"}]'}
execute if score @s Core.Stat.ManaMax matches 100..999 run data merge storage core:actionbar/mana {max:'[{"text":"\\uF828\\uF828\\uF826","font":"space"},{"score":{"objective":"Core.Stat.ManaMax","name":"@s"},"font":"mana"}]'}
execute if score @s Core.Stat.ManaMax matches 10..99 run data merge storage core:actionbar/mana {max:'[{"text":"\\uF828\\uF828\\uF828\\uF827","font":"space"},{"score":{"objective":"Core.Stat.ManaMax","name":"@s"},"font":"mana"}]'}
execute if score @s Core.Stat.ManaMax matches 0..9 run data merge storage core:actionbar/mana {max:'[{"text":"\\uF828\\uF828\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Stat.ManaMax","name":"@s"},"font":"mana"}]'}

#現在地から表示幅を計算
execute if score @s Core.Stat.Mana matches 10000.. run data merge storage core:actionbar/mana {now:'[{"text":"\\uF824","font":"space"},{"score":{"objective":"Core.Stat.Mana","name":"@s"},"font":"mana"}]'}
execute if score @s Core.Stat.Mana matches 1000..9999 run data merge storage core:actionbar/mana {now:'[{"text":"\\uF828\\uF825","font":"space"},{"score":{"objective":"Core.Stat.Mana","name":"@s"},"font":"mana"}]'}
execute if score @s Core.Stat.Mana matches 100..999 run data merge storage core:actionbar/mana {now:'[{"text":"\\uF828\\uF828\\uF826","font":"space"},{"score":{"objective":"Core.Stat.Mana","name":"@s"},"font":"mana"}]'}
execute if score @s Core.Stat.Mana matches 10..99 run data merge storage core:actionbar/mana {now:'[{"text":"\\uF828\\uF828\\uF828\\uF827","font":"space"},{"score":{"objective":"Core.Stat.Mana","name":"@s"},"font":"mana"}]'}
execute if score @s Core.Stat.Mana matches 0..9 run data merge storage core:actionbar/mana {now:'[{"text":"\\uF828\\uF828\\uF828\\uF828\\uF828","font":"space"},{"score":{"objective":"Core.Stat.Mana","name":"@s"},"font":"mana"}]'}

#間と前の表示名
data merge storage core:actionbar/mana {slash:'"/"',name:'{"text":"\\uE027","font":"add_fonts"}'}