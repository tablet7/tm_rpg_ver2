#> tm_rpg:enemy/second

# 敵の1秒ごとの処理。time/time_tick_sec/tick2 から呼ばれる
# 状態異常の処理と、火傷中の敵を燃やす処理を行う
# @s ＝ 敵（tag=enemy）

# 状態異常管理
function tm_rpg:system/abnormal/second

# 燃えていなかったら燃やす
execute store result score @s real_fire_time run data get entity @s Fire
execute if score @s burn_time matches 1.. if score @s real_fire_time matches ..0 run data merge entity @s {Fire:20}
