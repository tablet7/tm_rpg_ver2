#> tm_rpg:time/time_minutes

# 1分ごとの処理。time/time_tick_sec/tick20 から60秒ごとに呼ばれる
# 秒を0に戻し、分を1増やす

# 時間管理
scoreboard players set System seconds 0
scoreboard players add System minutes 1

execute if score System minutes matches 60 run function tm_rpg:time/time_minutes
