#> tm_rpg:player/2second

# プレイヤーの2秒ごとの処理。system/_2second から呼ばれ、HP・MPの自動回復と、装備の読み直しの念押しを行う
# @s ＝ プレイヤー

# 装備を読み直してステータスを組み立て直す（念のため。目印の属性が無い装備に持ち替えたときなど、装備の変化を見落としても2秒で直る）
scoreboard players set @s eq_dirty 1
scoreboard players set @s stat_dirty 1

# HP,MPの自動回復
execute if score @s hp < @s HP_MAX run function tm_rpg:system/stutas/hp_rege_2sec

execute if score @s mp < @s MP_MAX run function tm_rpg:system/stutas/mp_rege_2sec
