#> tm_rpg:system/item_drop/hit_mark/add_player

# ダメージを与えた敵の ent_id（#hit_mark_id temp）を、プレイヤーの印の枠（スコア hit_mark_1〜16）に入れる関数。item_drop/hit_mark/add から呼ばれる
# 入れる場所は hit_mark_next 番目の枠で、1〜16 を順番に回す。なので 17 体目の敵を入れると、いちばん最初に入れた敵の印から消える
# 既にどこかの枠に入っている敵は入れ直さない
# @s ＝ ダメージを与えたプレイヤー

# 同じ敵に続けてダメージを与えたとき（いちばん多い）は、もう入っているので何もしない
execute if score @s hit_mark_last = #hit_mark_id temp run return 0
scoreboard players operation @s hit_mark_last = #hit_mark_id temp

# どこかの枠に入っていれば何もしない
execute if score @s hit_mark_1 = #hit_mark_id temp run return 0
execute if score @s hit_mark_2 = #hit_mark_id temp run return 0
execute if score @s hit_mark_3 = #hit_mark_id temp run return 0
execute if score @s hit_mark_4 = #hit_mark_id temp run return 0
execute if score @s hit_mark_5 = #hit_mark_id temp run return 0
execute if score @s hit_mark_6 = #hit_mark_id temp run return 0
execute if score @s hit_mark_7 = #hit_mark_id temp run return 0
execute if score @s hit_mark_8 = #hit_mark_id temp run return 0
execute if score @s hit_mark_9 = #hit_mark_id temp run return 0
execute if score @s hit_mark_10 = #hit_mark_id temp run return 0
execute if score @s hit_mark_11 = #hit_mark_id temp run return 0
execute if score @s hit_mark_12 = #hit_mark_id temp run return 0
execute if score @s hit_mark_13 = #hit_mark_id temp run return 0
execute if score @s hit_mark_14 = #hit_mark_id temp run return 0
execute if score @s hit_mark_15 = #hit_mark_id temp run return 0
execute if score @s hit_mark_16 = #hit_mark_id temp run return 0

# hit_mark_next 番目の枠に入れて、次の枠へ進める（16 の次は 1）
execute unless score @s hit_mark_next matches 1..16 run scoreboard players set @s hit_mark_next 1
execute if score @s hit_mark_next matches 1 run scoreboard players operation @s hit_mark_1 = #hit_mark_id temp
execute if score @s hit_mark_next matches 2 run scoreboard players operation @s hit_mark_2 = #hit_mark_id temp
execute if score @s hit_mark_next matches 3 run scoreboard players operation @s hit_mark_3 = #hit_mark_id temp
execute if score @s hit_mark_next matches 4 run scoreboard players operation @s hit_mark_4 = #hit_mark_id temp
execute if score @s hit_mark_next matches 5 run scoreboard players operation @s hit_mark_5 = #hit_mark_id temp
execute if score @s hit_mark_next matches 6 run scoreboard players operation @s hit_mark_6 = #hit_mark_id temp
execute if score @s hit_mark_next matches 7 run scoreboard players operation @s hit_mark_7 = #hit_mark_id temp
execute if score @s hit_mark_next matches 8 run scoreboard players operation @s hit_mark_8 = #hit_mark_id temp
execute if score @s hit_mark_next matches 9 run scoreboard players operation @s hit_mark_9 = #hit_mark_id temp
execute if score @s hit_mark_next matches 10 run scoreboard players operation @s hit_mark_10 = #hit_mark_id temp
execute if score @s hit_mark_next matches 11 run scoreboard players operation @s hit_mark_11 = #hit_mark_id temp
execute if score @s hit_mark_next matches 12 run scoreboard players operation @s hit_mark_12 = #hit_mark_id temp
execute if score @s hit_mark_next matches 13 run scoreboard players operation @s hit_mark_13 = #hit_mark_id temp
execute if score @s hit_mark_next matches 14 run scoreboard players operation @s hit_mark_14 = #hit_mark_id temp
execute if score @s hit_mark_next matches 15 run scoreboard players operation @s hit_mark_15 = #hit_mark_id temp
execute if score @s hit_mark_next matches 16 run scoreboard players operation @s hit_mark_16 = #hit_mark_id temp
scoreboard players add @s hit_mark_next 1
execute if score @s hit_mark_next matches 17.. run scoreboard players set @s hit_mark_next 1
