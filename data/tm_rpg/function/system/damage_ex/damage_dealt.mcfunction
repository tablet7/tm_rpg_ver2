#> tm_rpg:system/damage_ex/damage_dealt
#> tm_rpg:system/damage_ex/damage_dealt {p_damage:10,m_damage:10,c_damage:10,func:"tm_rpg:system/naguri/non_func"}

# ダメージの計算・表記
scoreboard players set @s damage_dealt_per 100

$scoreboard players set @s damage_dealt_pmc_p $(p_damage)
$scoreboard players set @s damage_dealt_pmc_m $(m_damage)
$scoreboard players set @s damage_dealt_pmc_c $(c_damage)

$function $(func)

#tellraw @a [{"score":{"name":"@s","objective":"damage_dealt_pmc_p"}},{"text":"/"},{"score":{"name":"@s","objective":"damage_dealt_pmc_m"}},{"text":"/"},{"score":{"name":"@s","objective":"damage_dealt_pmc_c"}}]

# 回避
execute store result score @s random_rand run random value 1..100
scoreboard players operation @s temp = @s evasion 
execute if score @s temp matches 51.. run scoreboard players set @s temp 50
execute if score @s temp > @s random_rand run function tm_rpg:system/damage_ex/evasion_damage

# 破裂
execute if score @s[tag=!vibration_damage_flag,tag=!bleeding_damage_flag,tag=!burn_damage_flag,tag=!0damage_ent] rupture_time matches 1.. run function tm_rpg:system/abnormal/rupture_damage

# 沈潜
execute if score @s[tag=!vibration_damage_flag,tag=!bleeding_damage_flag,tag=!burn_damage_flag,tag=!0damage_ent] sinking_time matches 1.. run function tm_rpg:system/abnormal/sinking_damage

# 物理
execute if score @s armor matches ..75 run scoreboard players operation @s random_rand = @s armor
execute if score @s armor matches 76.. run scoreboard players set @s random_rand 75
scoreboard players operation @s damage_dealt_per -= @s random_rand
scoreboard players operation @s damage_dealt_pmc_p *= @s damage_dealt_per
scoreboard players operation @s damage_dealt_pmc_p /= System CONTACT_100

execute if score @s armor matches 76.. run scoreboard players operation @s random_rand = @s armor
execute if score @s armor matches 76.. run scoreboard players operation @s random_rand /= @s CONTACT_4
execute if score @s armor matches 76.. run scoreboard players operation @s damage_dealt_pmc_p -= @s random_rand

execute store result storage tm_rpg:damage_d damage_type int 1 run scoreboard players get @s damage_dealt_pmc_p
data modify storage tm_rpg:damage_d color set value "red"
execute if score @s damage_dealt_pmc_p matches 1.. run function tm_rpg:system/damage_ex/damage_dealt_m with storage tm_rpg:damage_d

execute if score @s damage_dealt_pmc_p matches 1.. run scoreboard players operation @s hp -= @s damage_dealt_pmc_p

scoreboard players set @s damage_dealt_per 100
#魔法
execute if score @s magic_armor matches ..75 run scoreboard players operation @s random_rand = @s magic_armor
execute if score @s magic_armor matches 76.. run scoreboard players set @s random_rand 75
#execute if score @s magic_armor matches 100.. if score @s guardian_skill4_buff_time matches 1.. run scoreboard players set @s random_rand 100
scoreboard players operation @s damage_dealt_per -= @s random_rand
scoreboard players operation @s damage_dealt_pmc_m *= @s damage_dealt_per
scoreboard players operation @s damage_dealt_pmc_m /= System CONTACT_100

execute if score @s magic_armor matches 76.. run scoreboard players operation @s random_rand = @s magic_armor
execute if score @s magic_armor matches 76.. run scoreboard players operation @s random_rand /= @s CONTACT_4
execute if score @s magic_armor matches 76.. run scoreboard players operation @s damage_dealt_pmc_m -= @s random_rand

execute store result storage tm_rpg:damage_d damage_type int 1 run scoreboard players get @s damage_dealt_pmc_m
data modify storage tm_rpg:damage_d color set value "blue"
execute if score @s damage_dealt_pmc_m matches 1.. run function tm_rpg:system/damage_ex/damage_dealt_m with storage tm_rpg:damage_d

execute if score @s damage_dealt_pmc_m matches 1.. run scoreboard players operation @s hp -= @s damage_dealt_pmc_m

# 確定ダメージ
execute store result storage tm_rpg:damage_d damage_type int 1 run scoreboard players get @s damage_dealt_pmc_c
data modify storage tm_rpg:damage_d color set value "white"
execute if score @s damage_dealt_pmc_c matches 1.. run function tm_rpg:system/damage_ex/damage_dealt_m with storage tm_rpg:damage_d

execute if score @s damage_dealt_pmc_c matches 1.. run scoreboard players operation @s hp -= @s damage_dealt_pmc_c

# ノックバック
damage @s 1 minecraft:player_attack by @e[tag=temp_victim,limit=1,sort=nearest]

#tellraw @a {"score": {"name": "@s", "objective": "damage_dealt_pmc"}}

tag @a remove 0damage_ent
tag @s remove 0damage_ent