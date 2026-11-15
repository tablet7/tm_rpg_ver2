#> tm_rpg:system/delete_entity_direction/remove_move_tag

# 壁に当たった弾の、まっすぐ進むタグを外して止める関数。system/delete_entity_direction/move_main から呼ばれる
# @s ＝ 壁に当たった弾

tag @s remove straight6
tag @s remove straight10

# 止まった弾が敵の方を向き続けないように、追尾もやめる
tag @s remove homing

tag @s remove stop_move

# 止まったら当たらなくなる弾（tag stop_harmless。地面に刺さった剣など）は、当たり判定をやめる（見た目だけ kill_time まで残る）
execute if entity @s[tag=stop_harmless] run tag @s remove damage_marker

# 壁で爆発する弾（tag explode_wall）は、ここで爆発して、この tick の最後に main の system kill で消える（kill_time 0 → -1）
# ここで kill しないのは、呼んだ側（move_main・tick）の残りの行が消えた弾に対して動かないようにするため
# explode_time を外して、時間切れの爆発と二重にならないようにする
execute if entity @s[tag=explode_wall] run function tm_rpg:player/skill/main_projectile/explode
execute if entity @s[tag=explode_wall] run tag @s remove explode_time
execute if entity @s[tag=explode_wall] run scoreboard players set @s kill_time 0