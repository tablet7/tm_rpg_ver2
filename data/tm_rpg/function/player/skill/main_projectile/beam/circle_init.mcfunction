#> tm_rpg:player/skill/main_projectile/beam/circle_init

# 円を描く太いレーザー（tag beam_circle）の初期設定。main_projectile/beam/init から呼ばれる
# 出したときの向きを円の中心にして、円のいちばん上から始める
# 先にスキル側で入れておくもの（入れないと半径 20 度・1周 40 tick・右回り）
#   circle_radius … 円の半径（度。中心の向きからどれだけずらすか）
#   circle_period … 1周の tick
#   circle_dir    … 1 ＝ 右回り（使う人から見て時計回り）、-1 ＝ 左回り
# @s ＝ レーザー

execute unless score @s circle_radius matches 1.. run scoreboard players set @s circle_radius 20
execute unless score @s circle_period matches 1.. run scoreboard players set @s circle_period 40
execute unless score @s circle_dir matches -1 run scoreboard players set @s circle_dir 1

# 1 tick に回る角度（ラジアンの 1000 倍）＝ 2π × 1000 ÷ 1周の tick。左回りはマイナス
scoreboard players set @s circle_k 6283
scoreboard players operation @s circle_k /= @s circle_period
scoreboard players operation @s circle_k *= @s circle_dir

# 円の上の位置（中心からのずれ。0.001 度）。いちばん上（左右 0・上へ半径）から始める
scoreboard players set @s circle_ox 0
scoreboard players set #beam_k temp -1000
scoreboard players operation @s circle_oy = @s circle_radius
scoreboard players operation @s circle_oy *= #beam_k temp

function tm_rpg:player/skill/main_projectile/beam/apply_rot
