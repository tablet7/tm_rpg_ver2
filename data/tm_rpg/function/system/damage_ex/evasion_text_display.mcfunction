#> tm_rpg:system/damage_ex/damage_text_display

$summon text_display ~$(x_rand) ~$(y_rand) ~$(z_rand) \
{transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},\
billboard:"vertical",text:{"bold":true,text:"回避！"},\
Tags:[damage_display,delete_entity,new_mob]}

scoreboard players set @e[limit=1,tag=new_mob,tag=delete_entity] kill_time 20
tag @e[limit=1,tag=new_mob] remove new_mob