#> tm_rpg:time/time_tick_sec/tick2

# 1秒周期の2tick目に実行される処理。tm_rpg:main から呼ばれる
# 敵の1秒ごとの処理（enemy/second）を行う

execute as @e[type=#tm_rpg:mob_type ,tag=enemy] at @s run function tm_rpg:enemy/second
