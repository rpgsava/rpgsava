#スロット番号を保存
execute store result score $Slot Item.Data run data get storage item: items[-1].Slot
#スロットを0に
data modify storage item: items[-1].Slot set value 0b
#ストレージから 0 0 0 にアイテムを持ってきてそれを操作し、item: items[-1]に戻す
data modify block 0 0 0 Items[{Slot:0b}] set from storage item: items[-1]
#TODOモブドロップによるものなら直接 0 0 0 に書き込まれたものにset_loreするので不要
#一旦nbtを浅くしておく
data modify storage item: dat set from block 0 0 0 Items[0].tag
#データをスコアに書き出し
execute store result score $Damage Item.Data run data get storage item: dat.RPG.Damage
execute store result score $ArrowDamage Item.Data run data get storage item: dat.RPG.ArrowDamage
execute store result score $MasicDamage Item.Data run data get storage item: dat.RPG.MasicDamage
execute store result score $Mana Item.Data run data get storage item: dat.RPG.Mana
execute store result score $Defence Item.Data run data get storage item: dat.RPG.Defence
execute store result score $Health Item.Data run data get storage item: dat.RPG.Health
execute store result score $Counter Item.Data run data get storage item: dat.RPG.Counter
execute store result score $Rarelity Item.Data run data get storage item: dat.RPG.Rarelity
execute store result score $BuyCoin Item.Data run data get storage item: dat.Shop.Buy
#スコアに応じてレア度の星を生成
execute if score $Rarelity Item.Data matches 1 run data merge storage item: {Rarelity:"★☆☆☆☆"}
execute if score $Rarelity Item.Data matches 2 run data merge storage item: {Rarelity:"★★☆☆☆"}
execute if score $Rarelity Item.Data matches 3 run data merge storage item: {Rarelity:"★★★☆☆"}
execute if score $Rarelity Item.Data matches 4 run data merge storage item: {Rarelity:"★★★★☆"}
execute if score $Rarelity Item.Data matches 5 run data merge storage item: {Rarelity:"★★★★★"}

#スコアをLoreに書き込む
item modify block 0 0 0 container.0 item:set_lore

#return
data modify storage item: items[-1] set from block 0 0 0 Items[]
#スロット番号を戻す
execute store result storage item: items[-1] byte 1 run scoreboard players get $Slot Item.Data
#0 0 0 を空にする
data remove block 0 0 0 Items[]