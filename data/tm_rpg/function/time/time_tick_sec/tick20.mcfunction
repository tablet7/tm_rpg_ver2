#> function tm_rpg:time/time_tick_sec/tick20

# 時間管理
scoreboard players add System seconds 1
scoreboard players set System tick 0

execute if score System seconds matches 60 run function tm_rpg:time/time_minutes