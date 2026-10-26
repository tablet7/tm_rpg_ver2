#> tm_rpg:system/abnormal/sinking_damage

execute if score @s sinking_potency matches ..0 run scoreboard players set @s sinking_potency 1
tellraw @s [{"text":"沈潜","color":"blue"},{"score":{"name":"@s","objective":"sinking_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"sinking_time"}},{"text":"秒","color":"white"}]

execute if entity @s[type=!player] run scoreboard players operation @s damage_dealt_pmc_m += @s sinking_potency

execute if entity @s[type=player] if score @s mp < @s MP_MAX run scoreboard players operation @s damage_dealt_pmc_m += @s sinking_potency
execute if entity @s[type=player] if score @s mp >= @s MP_MAX run scoreboard players operation @s mp -= @s sinking_potency


scoreboard players remove @s sinking_time 1

particle minecraft:block{block_state:lapis_block} ~ ~1 ~ 0.2 0.3 0.2 0.2 10 normal