#> tm_rpg:player/skill/fairy/skill1

# スキル「妖精（前方 10 マス・左右 2 マスの空間を光の線で引き裂き、範囲の敵に一度ダメージを与える）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 目の位置から、見ている向き（上下もふくむ）へ、見えないレーザー（marker。main_projectile/beam）2本を左右に並べて出し、すぐ消す
#   fire   … 本体（敵も使う）
#   skill2 … レーザー1本の設定（長さ・太さ）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_fairy から、予兆のあとに使う）
function tm_rpg:player/skill/fairy/fire

return 1
