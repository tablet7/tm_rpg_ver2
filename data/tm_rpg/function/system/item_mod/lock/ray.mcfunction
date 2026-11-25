#> tm_rpg:system/item_mod/lock/ray

# 視線の先を 0.2 ブロックずつ進み、最初に当たったドロッパーが改造台なら鍵をかける（lock/lock）。lock/on_open から呼ばれ、自分を繰り返し呼ぶ
# 最大 30 回（6 ブロック。ブロックに手が届く距離は 4.5 ブロック）
# #kaizou_ray temp ＝ 進んだ回数

# ドロッパーに当たったら、そのブロックの中心にある、まだ使われていない改造台の marker に鍵をかけて終わる
execute if block ~ ~ ~ minecraft:dropper align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=kaizoudai,tag=!kaizou_using,distance=..0.1,limit=1] run return run function tm_rpg:system/item_mod/lock/lock
execute if block ~ ~ ~ minecraft:dropper run return 0

scoreboard players add #kaizou_ray temp 1
execute if score #kaizou_ray temp matches ..30 positioned ^ ^ ^0.2 run function tm_rpg:system/item_mod/lock/ray
