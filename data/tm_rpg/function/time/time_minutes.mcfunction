#> function tm_rpg:time/time_minutes

# 時間管理
scoreboard players set System seconds 0
scoreboard players add System minutes 1

execute if score System minutes matches 60 run function tm_rpg:time/time_minutes