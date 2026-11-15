#> tm_rpg:player/skill/test_laser_sweep/skill1

# スキル「test振り上げレーザー（下から上へ向きが変わる太いレーザー）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 目の高さの1マス前から、下向き（40 度）のレーザーを出し、2秒で上向き（-40 度）まで振り上げる（main_projectile/beam・tag beam_sweep）
#   skill2 … レーザーの設定（長さ・太さ・当たる間隔・向きの変わり方・見た目）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/test_laser_sweep から使う）
function tm_rpg:player/skill/test_laser_sweep/fire

return 1
