#> function tm_rpg:player/reload
effect give @s minecraft:instant_health infinite 10 true
effect give @s minecraft:saturation infinite 10 true
effect give @s minecraft:resistance infinite 10 true

scoreboard players operation @s hp = @s HP_MAX
scoreboard players operation @s mp = @s MP_MAX
scoreboard players set @s skill1_recast 0
scoreboard players set @s skill2_recast 0
scoreboard players set @s skill3_recast 0
scoreboard players set @s skill4_recast 0
scoreboard players set @s skill5_recast 0
scoreboard players set @s skill6_recast 0

function tm_rpg:system/abnormal/clear

scoreboard players set @s damage_dealt_pmc_p 0
scoreboard players set @s damage_dealt_pmc_m 0
scoreboard players set @s damage_dealt_pmc_c 0
scoreboard players set @s damage_dealt_per 100

scoreboard players set @s shot_bow_time 0

scoreboard players set @s ATTACK_TIMER_LEV 12
scoreboard players set @s attack_timer 0

tag @s remove temp_victim
scoreboard players set @s temp_victim_remove 0

tag @s add player_reload

# hp表示
execute as @e[type=text_display,tag=mount_text] at @s if score @s ent_id = @a[tag=player_reload,limit=1] ent_id run kill

summon text_display ~ ~ ~ {billboard:"center",Tags:["sub_text","mount_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[1f,1f,1f]},text:{"color":"green","text":"❚❚❚❚❚❚❚❚❚❚"},background:-2368549}
ride @e[type=text_display,limit=1,tag=sub_text] mount @s
scoreboard players operation @e[type=text_display,tag=sub_text,limit=1] ent_id = @s ent_id
tag @e[type=text_display,tag=sub_text] remove sub_text


tag @s remove player_reload