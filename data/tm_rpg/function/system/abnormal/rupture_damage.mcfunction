#> tm_rpg:system/abnormal/rupture_damage

# 破裂の処理。ダメージを受けたときに、物理ダメージを破裂の威力ぶん増やす
# damage_ex/damage_dealt、damage_ex/damage_dealt_tama から呼ばれる
# @s ＝ ダメージを受けたエンティティ

execute if score @s rupture_potency matches ..0 run scoreboard players set @s rupture_potency 1

tellraw @s [{"text":"破裂","color":"green"},{"score":{"name":"@s","objective":"rupture_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"rupture_time"}},{"text":"秒","color":"white"}]
scoreboard players operation @s damage_dealt_pmc_p += @s rupture_potency
scoreboard players remove @s rupture_time 1

execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:ab_text x_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value 5..20
execute store result storage tm_rpg:ab_text y_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:ab_text z_rand float 0.1 run scoreboard players get @s random_rand

data merge storage tm_rpg:ab_text {color:green}
data merge storage tm_rpg:ab_text {type:"破裂"}
execute store result storage tm_rpg:ab_text damage int 1 run scoreboard players get @s rupture_potency
execute store result storage tm_rpg:ab_text time int 1 run scoreboard players get @s rupture_time

execute summon text_display run function tm_rpg:system/abnormal/ab_text

particle minecraft:block{block_state:emerald_block} ~ ~1 ~ 0.2 0.3 0.2 0.2 10 normal
