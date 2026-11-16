#> tm_rpg:player/skill/test_laser_twin/skill1

# スキル「test双子レーザー（左右のタレットから円を描くレーザー）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 使った人の左右 1.5 マスにタレットを1つずつ置き、右は右回り・左は左回りの円を描くレーザーを出す（3秒で消える）
#   skill2 … タレットの設定（見た目・回る向き）。skill3 … レーザーの設定（test_laser_circle と同じ円）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_test_laser_twin から、予兆のあとに使う）
function tm_rpg:player/skill/test_laser_twin/fire

return 1
