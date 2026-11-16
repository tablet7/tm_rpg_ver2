#> tm_rpg:enemy/skill/warn/ring_point

# 予兆の輪の点を1つ置く。enemy/skill/warn/ring_loop から execute summon ... run function で呼ばれる
# 中心から #warn_angle temp（0.1 度）の向きへ、#warn_radius temp（0.1 マス）だけ動かす（common/move_forward。マクロを使わない）
# main が #warn_time tick のあいだ、ここから赤いパーティクルを出す（tag warn_ring）。kill_time で消える（tag delete_entity）
# @s ＝ 出したばかりの点（marker）。実行位置 ＝ 輪の中心

tag @s add warn_ring
tag @s add delete_entity
scoreboard players operation @s kill_time = #warn_time temp

# 向きを点の角度にして、その向きへ半径ぶん動かす
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get #warn_angle temp
scoreboard players operation #move temp = #warn_radius temp
execute rotated as @s run function tm_rpg:player/skill/common/move_forward
