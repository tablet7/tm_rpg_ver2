#> tm_rpg:system/stutas/mp_rege_2sec

# MPを mp_rege ぶん回復する関数（最大値は超えない）。player/2second から呼ばれる
# @s ＝ プレイヤー

scoreboard players operation @s mp += @s mp_rege
execute if score @s mp > @s MP_MAX run scoreboard players operation @s mp = @s MP_MAX
