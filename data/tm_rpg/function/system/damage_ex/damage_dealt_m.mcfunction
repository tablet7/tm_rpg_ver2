#> tm_rpg:system/damage_ex/damage_dealt_m

# ダメージ表示用のデータ（色・座標・ダメージ量）を storage tm_rpg:damage_text_dis に入れ、damage_text_display を実行する関数（マクロなし）
# damage_ex/damage_dealt、damage_ex/damage_dealt_tama から呼ばれる
# 入力: storage tm_rpg:damage_d の color（色）、damage_type（ダメージ量）

# ダメージ表記の色
data modify storage tm_rpg:damage_text_dis color set from storage tm_rpg:damage_d color
# ダメージ表記の座標
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:damage_text_dis x_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value 5..20
execute store result storage tm_rpg:damage_text_dis y_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:damage_text_dis z_rand float 0.1 run scoreboard players get @s random_rand
# ダメージ量
data modify storage tm_rpg:damage_text_dis damage set from storage tm_rpg:damage_d damage_type

function tm_rpg:system/damage_ex/damage_text_display with storage tm_rpg:damage_text_dis
