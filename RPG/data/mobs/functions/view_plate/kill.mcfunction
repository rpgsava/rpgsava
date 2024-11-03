#spaceの数をカウントする(coin6桁までを想定)
execute if score $GainCoin Core.Coin matches 1..9 run data merge storage m_core:space {count:"     "}
execute if score $GainCoin Core.Coin matches 10..99 run data merge storage m_core:space {count:"    "}
execute if score $GainCoin Core.Coin matches 100..999 run data merge storage m_core:space {count:"   "}
execute if score $GainCoin Core.Coin matches 1000..9999 run data merge storage m_core:space {count:"  "}
execute if score $GainCoin Core.Coin matches 10000..99999 run data merge storage m_core:space {count:" "}
execute if score $GainCoin Core.Coin matches 100000.. run data merge storage m_core:space {count:""}

summon text_display ~ ~2.5 ~ {text:'[{"text":"獲得コイン：","color":"yellow"},{"storage":"m_core:space","nbt":"count"},"+",{"score":{"objective":"Core.Coin","name":"$GainCoin"}},"\\n",{"text":"獲得経験値：","color":"aqua"},""]',alignment:"left",line_width:100,billboard:"vertical",Tags:["RewordDisplay"]}

#最大値を計算
scoreboard players operation $max Core.Lv.Xp.Get.Skill = $Health_Xp Core.Lv.Xp.Now.Health
execute if score $max Core.Lv.Xp.Get.Skill < $Mana_Xp Core.Lv.Xp.Now.Mana run scoreboard players operation $max Core.Lv.Xp.Get.Skill = $Mana_Xp Core.Lv.Xp.Now.Mana
execute if score $max Core.Lv.Xp.Get.Skill < $Speed_Xp Core.Lv.Xp.Now.Speed run scoreboard players operation $max Core.Lv.Xp.Get.Skill = $Speed_Xp Core.Lv.Xp.Now.Speed
#spaceの数をカウント
execute if score $max Core.Lv.Xp.Get.Skill matches 0..9 run data merge storage m_core:space {count:'[{"text":"\\uF82A\\uF828\\uF828\\uF828","font":"space"}]'}
execute if score $max Core.Lv.Xp.Get.Skill matches 10..99 run data merge storage m_core:space {count:'[{"text":"\\uF82A\\uF828\\uF828\\uF822","font":"space"}]'}
execute if score $max Core.Lv.Xp.Get.Skill matches 100..999 run data merge storage m_core:space {count:'[{"text":"\\uF82A\\uF828\\uF824","font":"space"}]'}
execute if score $max Core.Lv.Xp.Get.Skill matches 1000..9999 run data merge storage m_core:space {count:'[{"text":"\\uF82A\\uF826","font":"space"}]'}
execute if score $max Core.Lv.Xp.Get.Skill matches 10000..99999 run data merge storage m_core:space {count:'[{"text":"\\uF82A","font":"space"}]'}
execute if score $max Core.Lv.Xp.Get.Skill matches 100000..999999 run data merge storage m_core:space {count:'[{"text":"\\uF828\\uF828\\uF828\\uF822","font":"space"}]'}
execute if score $max Core.Lv.Xp.Get.Skill matches 1000000..9999999 run data merge storage m_core:space {count:'[{"text":"\\uF828\\uF828\\uF824","font":"space"}]'}
execute if score $max Core.Lv.Xp.Get.Skill matches 10000000..99999999 run data merge storage m_core:space {count:'[{"text":"\\uF828\\uF826","font":"space"}]'}


summon text_display ~ ~1.725 ~ {text:'["",{"storage":"m_core:space","nbt":"count","interpret": true},{"text":"+","color":"light_purple"},{"score":{"objective":"Core.Lv.Xp.Now.Health","name":"$Health_Xp"}},{"text":"exp","color":"light_purple"},"\\n",{"storage":"m_core:space","nbt":"count","interpret": true},{"text":"+","color":"blue"},{"score":{"objective":"Core.Lv.Xp.Now.Mana","name":"$Mana_Xp"}},{"text":"exp","color":"blue"},"\\n",{"storage":"m_core:space","nbt":"count","interpret": true},{"text":"+","color":"aqua"},{"score":{"objective":"Core.Lv.Xp.Now.Speed","name":"$Speed_Xp"}},{"text":"exp","color":"aqua"}]',alignment:"right",line_width:150,billboard:"vertical",Tags:["RewordDisplay"]}