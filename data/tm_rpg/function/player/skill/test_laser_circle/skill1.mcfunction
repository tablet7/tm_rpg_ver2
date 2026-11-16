#> tm_rpg:player/skill/test_laser_circle/skill1

# スキル「test円レーザー（使う向きのまわりに円を描く太いレーザー）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 目の高さの1マス前から、使う向きを中心に半径 20 度の円を、2秒で1周、右回りに描くレーザーを出す（main_projectile/beam・tag beam_circle）
#   skill2 … レーザーの設定（長さ・太さ・当たる間隔・円の大きさと速さと向き・見た目）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_test_laser_circle から、予兆のあとに使う）
function tm_rpg:player/skill/test_laser_circle/fire

return 1
