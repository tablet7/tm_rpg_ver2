#> tm_rpg:system/stutas/mp_rege_2sec

scoreboard players operation @s mp += @s mp_rege
execute if score @s mp > @s MP_MAX run scoreboard players operation @s mp = @s MP_MAX