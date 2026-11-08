#> tm_rpg:system/stutas/hp_rege_2sec

# HPを hp_rege ぶん回復する関数（最大値は超えない）。player/2second から呼ばれる
# @s ＝ プレイヤー

scoreboard players operation @s hp += @s hp_rege
execute if score @s hp > @s HP_MAX run scoreboard players operation @s hp = @s HP_MAX
