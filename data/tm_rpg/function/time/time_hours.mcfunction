#> tm_rpg:time/time_hours

# 1時間ごとの処理。分を0に戻し、時間を1増やす。time/time_minutes から60分ごとに呼ばれる

# 時間管理
scoreboard players set System minutes 0
scoreboard players add System hours 1

