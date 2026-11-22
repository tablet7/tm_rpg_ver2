#> tm_rpg:system/item_drop/hit_mark/take_macro

# 印 tag item_drop.hit.<id> の付いたプレイヤーに tag item_drop.receiver を付け、印を外すマクロ関数。item_drop/hit_mark/take から呼ばれる
# タグ名に敵の ent_id が入っているのでマクロを使っている（タグの名前を変えるのはマクロでしかできない）。呼ぶのは敵を倒したときだけ
# 使い方: function tm_rpg:system/item_drop/hit_mark/take_macro with storage tm_rpg:hit_mark
# 引数: id（倒した敵の ent_id）

$tag @a[tag=item_drop.hit.$(id)] add item_drop.receiver
$tag @a remove item_drop.hit.$(id)
