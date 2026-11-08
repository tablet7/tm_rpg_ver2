#> tm_rpg:system/abnormal/bleeding_damage

execute if score @s bleeding_potency matches ..0 run scoreboard players set @s bleeding_potency 1

tellraw @s [{"text":"出血","color":"#640000"},{"score":{"name":"@s","objective":"bleeding_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"bleeding_time"}},{"text":"秒","color":"white"}]
tag @s add bleeding_damage_flag

execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:ab_text x_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value 5..20
execute store result storage tm_rpg:ab_text y_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:ab_text z_rand float 0.1 run scoreboard players get @s random_rand

data merge storage tm_rpg:ab_text {color:"#640000"}
data merge storage tm_rpg:ab_text {type:"出血"}
execute store result storage tm_rpg:ab_text damage int 1 run scoreboard players get @s bleeding_potency
execute store result storage tm_rpg:ab_text time int 1 run scoreboard players get @s bleeding_time

function tm_rpg:system/abnormal/ab_text with storage tm_rpg:ab_text

# ダメージ
data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

# func
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

execute store result storage tm_rpg:damage p_damage int 1 run scoreboard players get @s bleeding_potency
function tm_rpg:system/damage_ex/damage_dealt with storage tm_rpg:damage
scoreboard players remove @s bleeding_time 1

particle minecraft:block{block_state:redstone_block} ~ ~1 ~ 0.2 0.3 0.2 0.2 10 normal

tag @s remove bleeding_damage_flag