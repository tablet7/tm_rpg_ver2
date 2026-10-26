#> tm_rpg:system/abnormal/vibration_damage

execute if score @s vibration_potency matches ..0 run scoreboard players set @s vibration_potency 1
tellraw @s [{"text":"振動爆発!!!","color":"yellow"},{"score":{"name":"@s","objective":"vibration_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"vibration_time"}},{"text":"秒","color":"white"}]

tag @s add vibration_damage_flag

# ダメージ
data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

# func
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

execute if entity @s[type=!player] store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s vibration_potency

execute if entity @s[type=player] run function tm_rpg:system/abnormal/vibration_damage2

scoreboard players set @s vibration_time 10

function tm_rpg:system/damage_ex/damage_dealt with storage tm_rpg:damage

particle minecraft:block{block_state:gold_block} ~ ~1 ~ 0.2 0.3 0.2 0.2 10 normal

tag @s remove vibration_damage_flag