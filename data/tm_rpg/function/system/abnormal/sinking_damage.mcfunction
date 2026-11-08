#> tm_rpg:system/abnormal/sinking_damage

execute if score @s sinking_potency matches ..0 run scoreboard players set @s sinking_potency 1

tellraw @s [{"text":"沈潜","color":"blue"},{"score":{"name":"@s","objective":"sinking_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"sinking_time"}},{"text":"秒","color":"white"}]

execute if entity @s[type=!player] run scoreboard players operation @s damage_dealt_pmc_m += @s sinking_potency

execute if entity @s[type=player] if score @s mp matches ..0 run scoreboard players operation @s damage_dealt_pmc_m += @s sinking_potency
execute if entity @s[type=player] if score @s mp matches 1.. run scoreboard players operation @s mp -= @s sinking_potency

scoreboard players remove @s sinking_time 1

execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:ab_text x_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value 5..20
execute store result storage tm_rpg:ab_text y_rand float 0.1 run scoreboard players get @s random_rand
execute store result score @s random_rand run random value -15..15
execute store result storage tm_rpg:ab_text z_rand float 0.1 run scoreboard players get @s random_rand

data merge storage tm_rpg:ab_text {color:blue}
data merge storage tm_rpg:ab_text {type:"沈潜"}
execute store result storage tm_rpg:ab_text damage int 1 run scoreboard players get @s sinking_potency
execute store result storage tm_rpg:ab_text time int 1 run scoreboard players get @s sinking_time

function tm_rpg:system/abnormal/ab_text with storage tm_rpg:ab_text

particle minecraft:block{block_state:lapis_block} ~ ~1 ~ 0.2 0.3 0.2 0.2 10 normal