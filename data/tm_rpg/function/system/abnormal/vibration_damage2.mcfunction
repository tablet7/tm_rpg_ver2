#> tm_rpg:system/abnormal/vibration_damage2

execute store result score @s random_rand run random value 1..6

execute if score @s random_rand matches 1 if score @s skill1_recast matches 31.. store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s vibration_potency
execute if score @s random_rand matches 1 if score @s skill1_recast matches ..30 run scoreboard players operation @s skill1_recast += @s vibration_potency

execute if score @s random_rand matches 2 if score @s skill2_recast matches 31.. store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s vibration_potency
execute if score @s random_rand matches 2 if score @s skill2_recast matches ..30 run scoreboard players operation @s skill2_recast += @s vibration_potency

execute if score @s random_rand matches 3 if score @s skill3_recast matches 31.. store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s vibration_potency
execute if score @s random_rand matches 3 if score @s skill3_recast matches ..30 run scoreboard players operation @s skill3_recast += @s vibration_potency

execute if score @s random_rand matches 4 if score @s skill4_recast matches 31.. store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s vibration_potency
execute if score @s random_rand matches 4 if score @s skill4_recast matches ..30 run scoreboard players operation @s skill4_recast += @s vibration_potency

execute if score @s random_rand matches 5 if score @s skill5_recast matches 31.. store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s vibration_potency
execute if score @s random_rand matches 5 if score @s skill5_recast matches ..30 run scoreboard players operation @s skill4_recast += @s vibration_potency

execute if score @s random_rand matches 6 if score @s skill6_recast matches 31.. store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s vibration_potency
execute if score @s random_rand matches 6 if score @s skill6_recast matches ..30 run scoreboard players operation @s skill4_recast += @s vibration_potency