#> tm_rpg:system/item_mod/lock/lock

# 改造台に鍵をかけ、開いたプレイヤー以外が開けないようにする関数。lock/ray から呼ばれる
# 鍵（ドロッパーの lock）は開くときだけ確かめられるので、すでに開いている本人の画面は閉じない
# 鍵の条件は、だれも持っていない custom_data {kaizou_key:1b} のアイテムを手に持っていること（＝だれも開けない）
# 使っている人と開いたときの視線を marker に覚えておき、lock/check（5tick おき）が鍵を外すかどうかを決める
# @s ＝ 改造台の marker（ドロッパーの中心）、開いたプレイヤー ＝ tag kaizou_opener

tag @s add kaizou_using
scoreboard players operation @s kaizou_user = @a[tag=kaizou_opener,limit=1] ent_id
scoreboard players set @s kaizou_time 0

# 開いたときの視線（画面を開いているあいだは視線を動かせない。lock/check で比べる）
# 視線はスコアや predicate では読めないので、data get で読む（開いたときの1回だけ）
execute store result score @s kaizou_rot_x run data get entity @a[tag=kaizou_opener,limit=1] Rotation[0] 100
execute store result score @s kaizou_rot_y run data get entity @a[tag=kaizou_opener,limit=1] Rotation[1] 100

data modify block ~ ~ ~ lock set value {components:{"minecraft:custom_data":{kaizou_key:1b}}}
