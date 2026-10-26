#> tm_rpg:system/abnormal/bleeding_damage

tellraw @s [{"text":"出血","color":"#640000"},{"score":{"name":"@s","objective":"bleeding_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"bleeding_time"}},{"text":"秒","color":"white"}]
tag @s add bleeding_damage_flag

# ダメージ
data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

# func
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

execute if score @s bleeding_potency matches ..0 run scoreboard players set @s bleeding_potency 1
execute store result storage tm_rpg:damage p_damage int 1 run scoreboard players get @s bleeding_potency
function tm_rpg:system/damage_ex/damage_dealt with storage tm_rpg:damage
scoreboard players remove @s bleeding_time 1

particle minecraft:block{block_state:redstone_block} ~ ~1 ~ 0.2 0.3 0.2 0.2 10 normal

tag @s remove bleeding_damage_flag