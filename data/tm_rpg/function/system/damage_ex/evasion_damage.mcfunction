#> tm_rpg:system/damage_ex/evasion_damage

# 回避が成功したときの処理。ダメージを0にして「回避！」を表示する。damage_ex/damage_dealt、damage_ex/damage_dealt_tama から呼ばれる
# @s ＝ 回避したエンティティ

scoreboard players set @s damage_dealt_pmc_p 0
scoreboard players set @s damage_dealt_pmc_m 0
scoreboard players set @s damage_dealt_pmc_c 0

tellraw @s "回避!"

# 回避表記の座標
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:damage_text_dis x_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value 5..20
execute store result storage tm_rpg:damage_text_dis y_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:damage_text_dis z_rand float 0.1 run scoreboard players get @s random_rand


function tm_rpg:system/damage_ex/evasion_text_display with storage tm_rpg:damage_text_dis
