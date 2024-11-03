scoreboard players operation $now Item.SetStorage.Slot = $start Item.SetStorage.Slot
execute store result score $length Item.SetStorage.Slot run data get storage item: items

execute store result storage item: items[0].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[1].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[2].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[3].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[4].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[5].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[6].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[7].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[8].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[9].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1

execute if score $length Item.SetStorage.Slot matches ..9 run return 9

execute store result storage item: items[10].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[11].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[12].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[13].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[14].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[15].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[16].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[17].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[18].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1

execute if score $length Item.SetStorage.Slot matches ..18 run return 18

execute store result storage item: items[19].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[20].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[21].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[22].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[23].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[24].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[25].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1
execute store result storage item: items[26].Slot byte 1 run scoreboard players get $now Item.SetStorage.Slot
scoreboard players add $now Item.SetStorage.Slot 1

return 27