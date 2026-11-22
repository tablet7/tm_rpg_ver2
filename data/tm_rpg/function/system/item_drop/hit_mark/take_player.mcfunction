#> tm_rpg:system/item_drop/hit_mark/take_player

# 倒した敵の ent_id（#hit_mark_id temp）が印の枠（スコア hit_mark_1〜16）に入っていれば、アイテムを受け取る人（tag item_drop.receiver）にして、その枠を空ける関数
# item_drop/hit_mark/take から、オンラインのプレイヤー全員について呼ばれる
# @s ＝ プレイヤー

execute if score @s hit_mark_1 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_1 = #hit_mark_id temp run scoreboard players reset @s hit_mark_1
execute if score @s hit_mark_2 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_2 = #hit_mark_id temp run scoreboard players reset @s hit_mark_2
execute if score @s hit_mark_3 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_3 = #hit_mark_id temp run scoreboard players reset @s hit_mark_3
execute if score @s hit_mark_4 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_4 = #hit_mark_id temp run scoreboard players reset @s hit_mark_4
execute if score @s hit_mark_5 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_5 = #hit_mark_id temp run scoreboard players reset @s hit_mark_5
execute if score @s hit_mark_6 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_6 = #hit_mark_id temp run scoreboard players reset @s hit_mark_6
execute if score @s hit_mark_7 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_7 = #hit_mark_id temp run scoreboard players reset @s hit_mark_7
execute if score @s hit_mark_8 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_8 = #hit_mark_id temp run scoreboard players reset @s hit_mark_8
execute if score @s hit_mark_9 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_9 = #hit_mark_id temp run scoreboard players reset @s hit_mark_9
execute if score @s hit_mark_10 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_10 = #hit_mark_id temp run scoreboard players reset @s hit_mark_10
execute if score @s hit_mark_11 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_11 = #hit_mark_id temp run scoreboard players reset @s hit_mark_11
execute if score @s hit_mark_12 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_12 = #hit_mark_id temp run scoreboard players reset @s hit_mark_12
execute if score @s hit_mark_13 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_13 = #hit_mark_id temp run scoreboard players reset @s hit_mark_13
execute if score @s hit_mark_14 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_14 = #hit_mark_id temp run scoreboard players reset @s hit_mark_14
execute if score @s hit_mark_15 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_15 = #hit_mark_id temp run scoreboard players reset @s hit_mark_15
execute if score @s hit_mark_16 = #hit_mark_id temp run tag @s add item_drop.receiver
execute if score @s hit_mark_16 = #hit_mark_id temp run scoreboard players reset @s hit_mark_16
