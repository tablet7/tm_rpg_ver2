#> tm_rpg:system/abnormal/rupture_damage

execute if score @s rupture_potency matches ..0 run scoreboard players set @s rupture_potency 1
tellraw @s [{"text":"破裂","color":"green"},{"score":{"name":"@s","objective":"rupture_potency"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"rupture_time"}},{"text":"秒","color":"white"}]
scoreboard players operation @s damage_dealt_pmc_p += @s rupture_potency
scoreboard players remove @s rupture_time 1

particle minecraft:block{block_state:emerald_block} ~ ~1 ~ 0.2 0.3 0.2 0.2 10 normal
