#> tm_rpg:system/item_drop/hit_mark/add_macro

# tag item_drop.hit_now の付いたプレイヤーに、敵ごとの印 tag item_drop.hit.<id> を付けるマクロ関数。item_drop/hit_mark/add から呼ばれる
# タグ名に敵の ent_id を入れるためにマクロを使っている（タグの名前を変えるのはマクロでしかできない）
# 同じ敵に続けてダメージを与えたときは呼ばれない（item_drop/hit_mark/add が hit_mark_last で飛ばす）ので、呼ぶ回数は少ない
# 使い方: function tm_rpg:system/item_drop/hit_mark/add_macro with storage tm_rpg:hit_mark
# 引数: id（敵の ent_id）

$tag @a[tag=item_drop.hit_now] add item_drop.hit.$(id)
