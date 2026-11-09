#> tm_rpg:system/abnormal/burn_damage

# 火傷のダメージ処理（魔法ダメージ）。system/abnormal/second から1秒ごとに呼ばれる
# @s ＝ 火傷しているエンティティ

execute if score @s burn_potency matches ..0 run scoreboard players set @s burn_potency 1

tellraw @s [{"text":"火傷","color":"red"},{"score":{"name":"@s","objective":"burn_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"burn_time"}},{"text":"秒","color":"white"}]
tag @s add burn_damage_flag

execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:ab_text x_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value 5..20
execute store result storage tm_rpg:ab_text y_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:ab_text z_rand float 0.1 run scoreboard players get @s random_rand

data merge storage tm_rpg:ab_text {color:red}
data merge storage tm_rpg:ab_text {type:"火傷"}
execute store result storage tm_rpg:ab_text damage int 1 run scoreboard players get @s burn_potency
execute store result storage tm_rpg:ab_text time int 1 run scoreboard players get @s burn_time

execute summon text_display run function tm_rpg:system/abnormal/ab_text

# ダメージ
data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

# func
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

execute store result storage tm_rpg:damage m_damage int 1 run scoreboard players get @s burn_potency
function tm_rpg:system/damage_ex/damage_dealt

tag @s remove burn_damage_flag
