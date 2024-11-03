execute store result score $length Core.System.Get.MinEmptyInventorySlot run data get entity @s Inventory

#順に確認し途切れたところでreturn
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:0b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 0
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:1b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 1
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:2b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 2
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:3b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 3
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:4b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 4
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:5b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 5
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:6b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 6
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:7b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 7
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:8b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 8
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:9b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 9
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:10b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 10
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:11b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 11
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:12b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 12
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:13b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 13
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:14b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 14
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:15b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 15
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:16b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 16
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:17b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 17
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:18b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 18
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:19b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 19
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:20b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 20
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:21b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 21
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:22b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 22
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:23b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 23
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:24b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 24
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:25b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 25
execute store success score $bool Core.System.Get.MinEmptyInventorySlot if data entity @s Inventory[{Slot:26b}]
execute if score $bool Core.System.Get.MinEmptyInventorySlot matches 1 run return 26

#異常終了
return -1