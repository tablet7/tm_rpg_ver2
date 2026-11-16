#> tm_rpg:enemy/skill/warn/ring_loop

# 予兆の輪の点を1つずつ並べるくり返し。enemy/skill/warn/ring から呼ばれる
# #warn_points temp ＝ 残りの点の数、#warn_angle temp ＝ 次の点の角度（0.1 度）、#warn_step temp ＝ 1点ごとの角度
# @s ＝ スキルを使う敵（実行位置 ＝ 輪の中心）

execute summon minecraft:marker run function tm_rpg:enemy/skill/warn/ring_point

scoreboard players operation #warn_angle temp += #warn_step temp
scoreboard players remove #warn_points temp 1
execute if score #warn_points temp matches 1.. run function tm_rpg:enemy/skill/warn/ring_loop
