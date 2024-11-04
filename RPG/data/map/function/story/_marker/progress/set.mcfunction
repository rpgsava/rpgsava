execute store result score $tmp Map.Story.Now run data get storage map:story/progress now
scoreboard players operation $tmp-100 Map.Story.Now = $tmp Map.Story.Now
scoreboard players operation $tmp-100 Map.Story.Now -= $100 Core.Int

#ストーリーを再度見る設定ならストーリー進行を変更(現在値(progress)よりも大きい値ならここでは代入しない)
execute if score @s Map.Story.IsReplay = $True Core.Bool if score @s Map.Story.Progress >= $tmp Map.Story.Now run scoreboard players operation @s Map.Story.Now = $tmp Map.Story.Now

tellraw @a [{"score":{"objective": "Map.Story.Now","name":"@s"}}]

#そもそも現在のストーリー番号より大きいなら(100以上ストーリー番号が離れていた場合無効)
execute if score @s Map.Story.Now < $tmp Map.Story.Now if score @s Map.Story.Now >= $tmp-100 Map.Story.Now run scoreboard players operation @s Map.Story.Now = $tmp Map.Story.Now
tellraw @a [{"score":{"objective": "Map.Story.Now","name":"@s"}}]

#まだストーリーを見ていない場合は現在のストーリー番号をセット(同様に100以上はなれているならおかしいのでカット)(通常のストーリー進行)
execute if score @s Map.Story.Progress < $tmp Map.Story.Now if score @s Map.Story.Progress >= $tmp-100 Map.Story.Now run function map:story/_marker/progress/set_new_story

tellraw @a [{"score":{"objective": "Map.Story.Now","name":"@s"}}]