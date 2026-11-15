#> tm_rpg:player/skill/main_projectile/beam/end_rod_loop

# 太いレーザーの end_rod のパーティクルを、線に沿って 2マスごとに出すくり返し。main_projectile/beam/end_rod から呼ばれる
# #beam_left temp ＝ 残りの長さ（マス）
# @s ＝ レーザー（実行位置 ＝ パーティクルを出す場所）

particle minecraft:end_rod ~ ~ ~ 1 0.4 1 0.02 2
scoreboard players remove #beam_left temp 2
execute if score #beam_left temp matches 2.. positioned ^ ^ ^2 run function tm_rpg:player/skill/main_projectile/beam/end_rod_loop
