#> tm_rpg:system/abnormal/burn_damage

tellraw @s [{"text":"火傷","color":"red"},{"score":{"name":"@s","objective":"burn_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"burn_time"}},{"text":"秒","color":"white"}]
tag @s add burn_damage_flag

# ダメージ
data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

# func
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

execute if score @s burn_potency matches ..0 run scoreboard players set @s burn_potency 1
execute store result storage tm_rpg:damage m_damage int 1 run scoreboard players get @s burn_potency
function tm_rpg:system/damage_ex/damage_dealt with storage tm_rpg:damage

tag @s remove burn_damage_flag
