#> tm_rpg:time/time_tick_sec/tick1

# 1秒周期の1tick目に実行される処理。tm_rpg:main から呼ばれる
# 全プレイヤーの1秒ごとの処理（player/seconds）を行う

execute as @a at @s run function tm_rpg:player/seconds
