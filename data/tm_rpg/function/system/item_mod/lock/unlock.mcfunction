#> tm_rpg:system/item_mod/lock/unlock

# 改造台の鍵を外し、だれでも開けるようにする関数。lock/check_user・lock/timeout から呼ばれる
# @s ＝ 改造台の marker（ドロッパーの中心）

data remove block ~ ~ ~ lock
tag @s remove kaizou_using
scoreboard players reset @s kaizou_user
scoreboard players reset @s kaizou_time
scoreboard players reset @s kaizou_rot_x
scoreboard players reset @s kaizou_rot_y
