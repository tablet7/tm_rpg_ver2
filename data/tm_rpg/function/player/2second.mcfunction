#> tm_rpg:player/2second

# プレイヤーの2秒ごとの処理。system/_2second から呼ばれ、HP・MPの自動回復を行う
# @s ＝ プレイヤー

# HP,MPの自動回復
execute if score @s hp < @s HP_MAX run function tm_rpg:system/stutas/hp_rege_2sec

execute if score @s mp < @s MP_MAX run function tm_rpg:system/stutas/mp_rege_2sec
