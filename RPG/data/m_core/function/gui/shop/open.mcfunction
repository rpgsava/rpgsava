# 最初のショップ画面をセット(選択アイテムにはShopをカスタムタグで与える)
# もし、ショップを開いているプレイヤーがShopタグを持ったアイテムをクリックしたらclearしてなくなっているアイテムを検知、その場面に遷移する

# この関数では全てのショップnpcが利用する初期画面を作成する
advancement revoke @s only m_core:gui/shop_open

## クリック前に ./_.mcfunction によって自身の頭部にchest_minecartがあるはずなのでその中身を操作する
#現在ショップを開いているプレイヤーであることを明示
#プレイヤー特定用タグ
tag @s add ShopOpener
execute as @e[tag=Minecart.Shop] if score @s Core.PlayerId = @a[tag=ShopOpener,limit=1] Core.PlayerId run function m_core:gui/shop/open_init
tag @s remove ShopOpener
