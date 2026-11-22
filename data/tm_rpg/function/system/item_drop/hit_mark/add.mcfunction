#> tm_rpg:system/item_drop/hit_mark/add

# 敵にダメージを与えたプレイヤー（tag item_drop.hit_now）に、その敵の印（tag item_drop.hit.<敵の ent_id>）を付ける関数
# 印は、その敵を倒したときにアイテムを渡す相手を決めるのに使う（enemy/death_main → item_drop/hit_mark/take）
# damage_ex/damage_dealt、damage_ex/damage_dealt_tama から、敵の hp が減ったときに呼ばれる
# tag item_drop.hit_now はここで外す
# @s ＝ ダメージを受けた敵（tag=enemy）

# ent_id の無い敵は、印の名前を作れないので付けない
execute unless score @s ent_id matches -2147483648.. run return run tag @a remove item_drop.hit_now
scoreboard players operation #hit_mark_id temp = @s ent_id

# 前回もこの敵に印を付けた人（hit_mark_last が同じ）は付け済みなので外す（マクロを呼ぶ回数を減らす）
execute as @a[tag=item_drop.hit_now] if score @s hit_mark_last = #hit_mark_id temp run tag @s remove item_drop.hit_now
execute unless entity @a[tag=item_drop.hit_now,limit=1] run return 0

# 印を付ける
scoreboard players operation @a[tag=item_drop.hit_now] hit_mark_last = #hit_mark_id temp
execute store result storage tm_rpg:hit_mark id int 1 run scoreboard players get #hit_mark_id temp
function tm_rpg:system/item_drop/hit_mark/add_macro with storage tm_rpg:hit_mark

tag @a remove item_drop.hit_now
