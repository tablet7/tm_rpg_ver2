#> tm_rpg:player/skill/main_projectile/beam/hit_loop

# 太いレーザーの当たり判定を、線に沿って 2マスごとに動かすくり返し。main_projectile/beam/hit から呼ばれる
# #beam_left temp ＝ 残りの長さ（マス）
# @s ＝ レーザー（実行位置 ＝ 箱の中心。向き ＝ 撃つ向き）

function tm_rpg:player/skill/main_projectile/hit
scoreboard players remove #beam_left temp 2
execute if score #beam_left temp matches 2.. positioned ^ ^ ^2 run function tm_rpg:player/skill/main_projectile/beam/hit_loop
