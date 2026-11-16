#> tm_rpg:player/skill/main_projectile/beam/init

# 太いレーザー（tag beam）の共通の初期設定。スキルのレーザーの設定（<スキル>/skill2）で、main_projectile/init のあとに呼ぶ
# 向いている方向にブロックを調べ、壁までの長さ（最大 beam_length マス）をスコア beam_length に入れ直す。見た目（item_display）もその長さに伸ばす
# 向きを固定するレーザーは、長さを出したときに1回だけ決める（あとからブロックが置かれても変わらない）
# 向きが変わるレーザー（tag beam_sweep）は、毎 tick 向きを変えたあとに長さを決め直す（main_projectile/beam/sweep）
# 先にスキル側で入れておくもの
#   スコア beam_length … 最大の長さ（マス）
#   スコア hit_interval … 当たる間隔（main_projectile/init より前）。tag pierce も付ける（当たっても消えない）
#   tag beam … 当たり判定を線に沿って動かす（main_projectile/beam/hit）
#   tag beam_end_rod ＋ image_marker … 線に沿って end_rod のパーティクルを出す（main_projectile/beam/end_rod）
#   tag beam_sweep ＋ スコア sweep_yaw / sweep_pitch … 毎 tick 向きを変える（0.1 度/tick。main_projectile/beam/sweep）
#   tag beam_circle ＋ スコア circle_radius / circle_period / circle_dir … 出した向きを中心に円を描く（main_projectile/beam/circle_init。beam_sweep はこの関数が付ける）
#   見た目の item_display の transformation（太さ・item）。この関数が scale と translation の z（長さの向き）を上書きする
# @s ＝ レーザー（向き ＝ 撃つ向き）

# 最大の長さを覚えておく（向きが変わるレーザーが長さを決め直すときに使う）
scoreboard players operation @s beam_max_len = @s beam_length

# 円を描くレーザーも、向きが変わるレーザーとして動かす
tag @s[tag=beam_circle] add beam_sweep

# 向きが変わるレーザーは、今の向きをスコアに入れておく（毎 tick エンティティのデータを読まないため）
execute if entity @s[tag=beam_sweep] store result score @s sweep_rot_y run data get entity @s Rotation[0] 10
execute if entity @s[tag=beam_sweep] store result score @s sweep_rot_x run data get entity @s Rotation[1] 10

# 円を描くレーザーは、出した向きを中心にして、円のいちばん上から始める
execute if entity @s[tag=beam_circle] run function tm_rpg:player/skill/main_projectile/beam/circle_init

# 壁までの長さと見た目
function tm_rpg:player/skill/main_projectile/beam/length
