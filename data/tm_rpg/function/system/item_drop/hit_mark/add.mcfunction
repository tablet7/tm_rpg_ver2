#> tm_rpg:system/item_drop/hit_mark/add

# 敵にダメージを与えたプレイヤー（tag item_drop.hit_now）の印の枠（スコア hit_mark_1〜16）に、その敵の ent_id を入れる関数
# 印は、その敵を倒したときにアイテムを渡す相手を決めるのに使う（enemy/death_main → item_drop/hit_mark/take）
# damage_ex/damage_dealt、damage_ex/damage_dealt_tama から、敵の hp が減ったときに呼ばれる
# tag item_drop.hit_now はここで外す
# @s ＝ ダメージを受けた敵（tag=enemy）

# ent_id の無い敵は、倒したときに見分けられないので印を付けない
execute unless score @s ent_id matches -2147483648.. run return run tag @a remove item_drop.hit_now
scoreboard players operation #hit_mark_id temp = @s ent_id

# 1人ずつ枠に入れる（item_drop/hit_mark/add_player）
execute as @a[tag=item_drop.hit_now] run function tm_rpg:system/item_drop/hit_mark/add_player

tag @a remove item_drop.hit_now
