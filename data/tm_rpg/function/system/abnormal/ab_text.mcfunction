#> tm_rpg:system/abnormal/ab_text

# 状態異常の発生表示（text_display）を出すマクロ関数。各状態異常のダメージ関数から with storage tm_rpg:ab_text で呼ばれる
# 引数: x_rand, y_rand, z_rand, type, damage, time, color

$summon text_display ~$(x_rand) ~$(y_rand) ~$(z_rand) \
{transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},\
billboard:"vertical",text:{"bold":true,text:"$(type)$(damage)：$(time)",color:"$(color)"},\
Tags:[damage_display,delete_entity,new_mob]}

scoreboard players set @e[limit=1,tag=new_mob,tag=delete_entity] kill_time 20
tag @e[limit=1,tag=new_mob] remove new_mob

