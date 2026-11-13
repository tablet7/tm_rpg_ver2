#> tm_rpg:time/time_tick_sec/tick5

# 1秒周期の5tick目に実行される処理。tm_rpg:main から呼ばれる

# 改造台の処理（5tick おき）
execute as @e[type=marker,tag=kaizoudai] at @s run function tm_rpg:system/item_mod/kaizoudai_main
