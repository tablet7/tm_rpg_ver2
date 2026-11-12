#> tm_rpg:system/delete_entity_direction/remove_move_tag

# 壁に当たった弾の、まっすぐ進むタグを外して止める関数。system/delete_entity_direction/move_main から呼ばれる
# @s ＝ 壁に当たった弾

tag @s remove straight6
tag @s remove straight10

tag @s remove stop_move