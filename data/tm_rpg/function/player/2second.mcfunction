#> tm_rpg:player/second

# HP,MPの自動回復
execute if score @s hp < @s HP_MAX run function tm_rpg:system/stutas/hp_rege_2sec

execute if score @s mp < @s MP_MAX run function tm_rpg:system/stutas/mp_rege_2sec