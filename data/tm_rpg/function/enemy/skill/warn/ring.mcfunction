#> tm_rpg:enemy/skill/warn/ring

# 予兆の赤いパーティクルの輪を作る。enemy/skill/warn/start から呼ばれる（#warn_shape temp が 1 のとき）
# 輪の上に、見えない marker（tag warn_ring）を等しい間隔で並べる。main が #warn_time tick のあいだ、それぞれから赤いパーティクルを出す
# 並べるのは最初の1回だけ（毎 tick 輪を計算しないので軽い）
# 点の数 ＝ 半径（マス）× 6（12〜96 個）。#warn_radius temp ＝ 半径（0.1 マス単位）
# @s ＝ スキルを使う敵（実行位置 ＝ 輪の中心）

# 点の数
scoreboard players operation #warn_points temp = #warn_radius temp
scoreboard players set #warn_k temp 6
scoreboard players operation #warn_points temp *= #warn_k temp
scoreboard players set #warn_k temp 10
scoreboard players operation #warn_points temp /= #warn_k temp
execute if score #warn_points temp matches ..11 run scoreboard players set #warn_points temp 12
execute if score #warn_points temp matches 97.. run scoreboard players set #warn_points temp 96

# 1点ごとの角度（0.1 度単位）＝ 3600 ÷ 点の数
scoreboard players set #warn_step temp 3600
scoreboard players operation #warn_step temp /= #warn_points temp

# 0 度から1点ずつ並べる
scoreboard players set #warn_angle temp 0
function tm_rpg:enemy/skill/warn/ring_loop
