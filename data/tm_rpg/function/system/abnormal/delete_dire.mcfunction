#> tm_rpg:system/abnormal/delete_dire

scoreboard players add @s kill_time 1
execute if score @s kill_time matches 5.. run tp @s 10 -100 10
execute if score @s kill_time matches 5.. run kill