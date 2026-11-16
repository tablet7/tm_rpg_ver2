#> tm_rpg:player/skill/test_obj_line/skill1

# スキル「test設置物連続設置（前方にマグマブロックを順に並べて置き、周りの敵にダメージを与える）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 見えない管理役（marker）を出し、管理役が時間差でマグマブロックを1個ずつ出す（main_projectile/spawner）
#   skill2 … 管理役の設定（何 tick ごと・何個・当たる間隔・進む距離）
#   skill3 … 管理役が子（マグマブロック）を出す（spawner/spawn から呼ばれる）
#   skill4 … 子の設定（見た目・当たり判定の大きさ）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る。管理役が覚えて、子を出すたびに使う）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_test_obj_line から、予兆のあとに使う）
function tm_rpg:player/skill/test_obj_line/fire

return 1
