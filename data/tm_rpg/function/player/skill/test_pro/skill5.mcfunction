#> tm_rpg:player/skill/test_pro/skill5

# スキル「test飛び道具ダメージ」の爆発する弾の設定。skill1 から execute summon ... run function で呼ばれる
# 爆発のタグを付けてから、ふつうの弾と同じ skill2（見た目・種類・動き・共通の初期設定）を呼ぶ
# 爆発の決まりは main_projectile/explode（きっかけ・見た目・半径のタグを組み合わせる）
# @s ＝ 出したばかりの弾（item_display）。実行時の向きは、プレイヤーの左向き

# きっかけ: 敵に当たったとき・壁に当たったとき・時間切れ（要らないものは消す）
tag @s add explode_hit
tag @s add explode_wall
tag @s add explode_time
# 見た目: end_rod を広げる（爆発のパーティクルにするなら explode_fx_blast）
tag @s add explode_fx_end_rod
# 半径: 3マス
tag @s add explode3

function tm_rpg:player/skill/test_pro/skill2
