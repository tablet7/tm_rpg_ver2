#> tm_rpg:system/abnormal/second

# 火傷
execute if score @s burn_time matches 1.. run function tm_rpg:system/abnormal/burn_damage
execute if score @s burn_time matches ..0 run scoreboard players set @s burn_potency 0
execute if score @s burn_time matches 0.. run scoreboard players remove @s burn_time 1

# 出血
execute if score @s[type=!player] bleeding_time matches 1.. run function tm_rpg:system/abnormal/bleeding_damage
execute if score @s bleeding_time matches ..0 run scoreboard players set @s bleeding_potency 0
execute if score @s bleeding_time matches 0.. run scoreboard players remove @s bleeding_time 1

# 破裂
execute if score @s rupture_time matches ..0 run scoreboard players set @s rupture_potency 0
execute if score @s rupture_time matches 0.. run scoreboard players remove @s rupture_time 1

# 沈潜
execute if score @s sinking_time matches ..0 run scoreboard players set @s sinking_potency 0
execute if score @s sinking_time matches 0.. run scoreboard players remove @s sinking_time 1

# 振動
execute if score @s vibration_time matches ..0 run scoreboard players set @s vibration_potency 0
execute if score @s vibration_time matches 0.. run scoreboard players remove @s vibration_time 1
