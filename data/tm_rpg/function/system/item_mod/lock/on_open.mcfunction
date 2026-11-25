#> tm_rpg:system/item_mod/lock/on_open

# ドロッパーを開いたプレイヤーの処理。player/main から、統計 kaizou_open（ドロッパーを開いた回数）が増えたときに呼ばれる
# 開いたのが改造台なら（視線の先のドロッパーに改造台の marker があれば）、lock/lock で鍵をかける
# @s ＝ ドロッパーを開いたプレイヤー（at @s）

scoreboard players set @s kaizou_open 0

# 目の位置から視線の先へ、ドロッパーに当たるまで進む（lock/ray）
tag @s add kaizou_opener
scoreboard players set #kaizou_ray temp 0
execute anchored eyes positioned ^ ^ ^ run function tm_rpg:system/item_mod/lock/ray
tag @s remove kaizou_opener
