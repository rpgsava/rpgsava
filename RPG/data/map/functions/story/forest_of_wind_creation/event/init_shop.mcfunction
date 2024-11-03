
    #初期化
    data merge storage item: {items:[]}
    #該当アイテムを追加
    function item:add_storage/weapons.0001.oak_sword
    function item:add_storage/weapons.0002.short_spear
    function item:add_storage/weapons.1001.short_rod
    function item:add_storage/weapons.1002.short_staff
    function item:add_storage/weapons.2001.wooden_bow
    #最初のスロットを決めて
    scoreboard players set $start Item.SetStorage.Slot 10
    #トロッコ内のアイテムの位置を決定
    function item:set_storage/set_slot
    #アイテムを実データにセット
    data modify storage core:shop Weapons set from storage item: items


    #初期化
    data merge storage item: {items:[]}
    #該当アイテムを追加
    function item:add_storage/fruits.0001.glowberry
    #最初のスロットを決めて
    scoreboard players set $start Item.SetStorage.Slot 10
    #トロッコ内のアイテムの位置を決定
    function item:set_storage/set_slot
    #アイテムを実データにセット
    data modify storage core:shop Fruits set from storage item: items
    data merge storage core:shop {Armors:[]}
    data merge storage core:shop {Others:[]}