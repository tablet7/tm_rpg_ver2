#> tm_rpg:player/skill/main_projectile/beam/sweep

# 向きが変わる太いレーザー（tag beam_sweep）の毎 tick の処理。main_projectile/tick の最後（当たり判定・見た目のあと）から呼ばれる
# 向きを sweep_yaw（左右）・sweep_pitch（上下）だけ変え、円を描くレーザー（tag beam_circle）は円の上の位置を進めて、長さを決め直す
# 次の tick の当たり判定・見た目は新しい向きで動く
#   sweep_yaw   … 0.1 度/tick。+ で右へ、- で左へ回る
#   sweep_pitch … 0.1 度/tick。- で上へ、+ で下へ回る（上下は -90〜90 度で止まる）
# 向きの例（どちらも出すときの向きは fire の execute rotated で決める）
#   下から上: rotated ~ 40 で出し、sweep_pitch -20（2秒で 40 度 → -40 度）
#   右から左: rotated ~40 ~ で出し、sweep_yaw -20（2秒で右 40 度 → 左 40 度）
# 円を描くときは sweep_yaw / sweep_pitch が円の中心を動かす（0 なら中心は止まったまま）
# @s ＝ レーザー

# 向き（円を描くレーザーは円の中心）。0.1 度単位のスコア
scoreboard players operation @s sweep_rot_y += @s sweep_yaw
scoreboard players operation @s sweep_rot_x += @s sweep_pitch

# 円を描くレーザーは、円の上の位置を進める
execute if entity @s[tag=beam_circle] run function tm_rpg:player/skill/main_projectile/beam/circle_step

# エンティティの向きに入れて、新しい向きで壁までの長さを決め直す
function tm_rpg:player/skill/main_projectile/beam/apply_rot
function tm_rpg:player/skill/main_projectile/beam/length
