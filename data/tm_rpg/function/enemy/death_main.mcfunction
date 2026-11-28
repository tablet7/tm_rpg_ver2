#> tm_rpg:enemy/death_main

# 敵の HP が 0 以下になったときの処理（アイテムドロップなど）を行う関数
# enemy/main から hp が ..0 のときに呼ばれる
# @s ＝ 敵（tag=enemy）

# アイテムドロップ
# この敵に1回でもダメージを与えたプレイヤー全員（印の枠 hit_mark_1〜16 にこの敵の ent_id が入っている人）を受け取る人にして、アクセサリーを直接渡す
function tm_rpg:system/item_drop/hit_mark/take
execute if entity @a[tag=item_drop.receiver,limit=1] run function tm_rpg:system/item_drop/accessories/default
# 強化の素材（スコア。tm_workbench。敵の mat_family・mat_table が無ければ何もしない。説明: md/gui_md/materials.md）
execute if entity @a[tag=item_drop.receiver,limit=1] run function tm_workbench:mat/drop/start
tag @a remove item_drop.receiver

# 見た目を item_display で乗せている敵（sealed_statue など）は、その見た目も消す
execute on passengers run kill @s[type=minecraft:item_display]
kill @s
