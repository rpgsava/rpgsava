#アイテムデータをセットする
execute if score @s Core.Shop.IsSummonMinecart matches 0 run function map:story/forest_of_tree_shadows/event/init_shop

function m_core:gui/shop/_