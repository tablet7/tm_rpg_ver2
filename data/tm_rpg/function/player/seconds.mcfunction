#> tm_rpg:player/seconds

# recast操作
execute if score @s skill1_recast matches 1.. run scoreboard players remove @s skill1_recast 1
execute if score @s skill2_recast matches 1.. run scoreboard players remove @s skill2_recast 1
execute if score @s skill3_recast matches 1.. run scoreboard players remove @s skill3_recast 1
execute if score @s skill4_recast matches 1.. run scoreboard players remove @s skill4_recast 1
execute if score @s skill5_recast matches 1.. run scoreboard players remove @s skill5_recast 1
execute if score @s skill6_recast matches 1.. run scoreboard players remove @s skill6_recast 1

# 状態異常管理
function tm_rpg:system/abnormal/second

# 燃えていなかったら燃やす
execute store result score @s real_fire_time run data get entity @s Fire
execute if score @s burn_time matches 1.. if score @s real_fire_time matches ..0 run summon vindicator ~ ~-0.5 ~ {DeathLootTable:"tm_rpg:entity/empty",Silent:1b,Invulnerable:1b,DeathTime:19,Johnny:1b,Tags:["fire_ent_delete","temp_victim"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"fire_aspect":1},"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:0.01,operation:"add_multiplied_base"},{id:"attack_knockback",type:"attack_knockback",amount:0,operation:"add_value"}]}}},drop_chances:{mainhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:20000,show_particles:0b}]}
