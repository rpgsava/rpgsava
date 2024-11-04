#アイテムデータをセットする
execute if score @s Core.Shop.IsSummonMinecart matches 0 run function map:story/forest_of_wind_creation/event/init_shop

function m_core:gui/shop/_