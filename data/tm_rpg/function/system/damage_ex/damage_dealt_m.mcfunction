#> tm_rpg:system/damage_ex/damage_dealt

# ダメージ表記の文字列
$data merge storage tm_rpg:damage_text_dis {color:$(color)}
# ダメージ表記の座標
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:damage_text_dis x_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value 5..20
execute store result storage tm_rpg:damage_text_dis y_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:damage_text_dis z_rand float 0.1 run scoreboard players get @s random_rand
# ダメージ量
$data modify storage tm_rpg:damage_text_dis damage set value $(damage_type)

function tm_rpg:system/damage_ex/damage_text_display with storage tm_rpg:damage_text_dis