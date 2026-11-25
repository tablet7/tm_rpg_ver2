#> tm_rpg:system/item_mod/lock/check_user

# 改造台を使っている人が画面を閉じたかを調べ、閉じていたら鍵を外す。lock/check から呼ばれる
# 画面を閉じたことは直接わからないので、次のどれかで閉じたとみなす
#   ・使っている人が近くにいない（抜けた・離れた）
#   ・視線が開いたときから動いた（画面を開いているあいだは視線を動かせない。ほかの人に押されても視線は変わらない）
# 視線が動かないまま 60 秒（1200 tick）たったら、中身を本人に返して改造台を置き直す（lock/timeout）
# @s ＝ 改造台の marker（ドロッパーの中心）、使っている人 ＝ tag kaizou_this

execute unless entity @a[tag=kaizou_this,limit=1] run return run function tm_rpg:system/item_mod/lock/unlock

# 視線はスコアや predicate では読めないので、data get で読む（鍵のかかった改造台を使っている人だけ、5tick おき）
execute store result score #kaizou_rot_x temp run data get entity @a[tag=kaizou_this,limit=1] Rotation[0] 100
execute store result score #kaizou_rot_y temp run data get entity @a[tag=kaizou_this,limit=1] Rotation[1] 100
execute unless score #kaizou_rot_x temp = @s kaizou_rot_x run return run function tm_rpg:system/item_mod/lock/unlock
execute unless score #kaizou_rot_y temp = @s kaizou_rot_y run return run function tm_rpg:system/item_mod/lock/unlock

execute if score @s kaizou_time matches 1200.. run function tm_rpg:system/item_mod/lock/timeout
