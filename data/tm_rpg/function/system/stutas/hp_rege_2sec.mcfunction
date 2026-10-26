#> tm_rpg:system/stutas/hp_rege_2sec

scoreboard players operation @s hp += @s hp_rege
execute if score @s hp > @s HP_MAX run scoreboard players operation @s hp = @s HP_MAX