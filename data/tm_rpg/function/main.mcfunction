#> tm_rpg:main

# main
execute as @a at @s run function tm_rpg:player/main
execute as @e[tag=enemy] at @s run function tm_rpg:enemy/main

# 時間管理
scoreboard players add System tick 1

execute if score System tick matches 1 run function tm_rpg:time/time_tick_sec/tick1
execute if score System tick matches 2 run function tm_rpg:time/time_tick_sec/tick2
execute if score System tick matches 3 run function tm_rpg:time/time_tick_sec/tick3
execute if score System tick matches 4 run function tm_rpg:time/time_tick_sec/tick4
execute if score System tick matches 5 run function tm_rpg:time/time_tick_sec/tick5
execute if score System tick matches 6 run function tm_rpg:time/time_tick_sec/tick6
execute if score System tick matches 7 run function tm_rpg:time/time_tick_sec/tick7
execute if score System tick matches 8 run function tm_rpg:time/time_tick_sec/tick8
execute if score System tick matches 9 run function tm_rpg:time/time_tick_sec/tick9
execute if score System tick matches 10 run function tm_rpg:time/time_tick_sec/tick10
execute if score System tick matches 11 run function tm_rpg:time/time_tick_sec/tick11
execute if score System tick matches 12 run function tm_rpg:time/time_tick_sec/tick12
execute if score System tick matches 13 run function tm_rpg:time/time_tick_sec/tick13
execute if score System tick matches 14 run function tm_rpg:time/time_tick_sec/tick14
execute if score System tick matches 15 run function tm_rpg:time/time_tick_sec/tick15
execute if score System tick matches 16 run function tm_rpg:time/time_tick_sec/tick16
execute if score System tick matches 17 run function tm_rpg:time/time_tick_sec/tick17
execute if score System tick matches 18 run function tm_rpg:time/time_tick_sec/tick18
execute if score System tick matches 19 run function tm_rpg:time/time_tick_sec/tick19
execute if score System tick matches 20 run function tm_rpg:time/time_tick_sec/tick20

# 2秒
scoreboard players add System 2tick 1
execute if score System 2tick matches 40.. run function tm_rpg:system/_2second

# system kill
execute as @e[type=#tm_rpg:mob_type,scores={hp = ..0}] run kill @s
execute as @e[type=#tm_rpg:delete_type,tag=delete_entity] at @s run scoreboard players remove @s kill_time 1

execute as @e[type=#tm_rpg:delete_type,tag=delete_entity] at @s if score @s kill_time matches ..-1 run kill

## テキストディスプレイ
execute as @e[type=text_display,tag=mount_text] at @s unless entity @e[type=!#tm_rpg:delete_hp_bar_type,dx=0,dy=-3,dz=0] run kill @s

## 燃やすためのヴィンディケーター
execute as @e[type=vindicator,tag=fire_ent_delete] run function tm_rpg:system/abnormal/delete_dire

## 矢
execute as @e[type=arrow,nbt={inGround:1b}] at @s run kill