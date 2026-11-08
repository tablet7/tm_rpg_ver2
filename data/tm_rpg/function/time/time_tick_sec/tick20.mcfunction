#> tm_rpg:time/time_tick_sec/tick20

# 1秒周期の20tick目に実行される処理。tm_rpg:main から呼ばれる
# 秒を1増やし、tickカウンターを0に戻す（60秒で time/time_minutes を実行する）

# 時間管理
scoreboard players add System seconds 1
scoreboard players set System tick 0

execute if score System seconds matches 60 run function tm_rpg:time/time_minutes
