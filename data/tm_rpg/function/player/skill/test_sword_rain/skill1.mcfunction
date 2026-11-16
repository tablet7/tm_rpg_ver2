#> tm_rpg:player/skill/test_sword_rain/skill1

# スキル「test剣の雨（前方に剣を次々と降らせる）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 見えない管理役（marker）を出し、管理役が時間差で剣を1本ずつ出す（main_projectile/spawner）
#   skill2 … 管理役の設定（何 tick ごと・何本・進む距離）。管理役のいる場所が、剣が刺さる場所になる
#   skill3 … 管理役が剣を出す（spawner/spawn から呼ばれる）
#   skill4 … 剣の設定（管理役の上の箱のランダムな位置に動かし、管理役に向けて飛ばす）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る。管理役が覚えて、剣を出すたびに使う）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_test_sword_rain から使う）
function tm_rpg:player/skill/test_sword_rain/fire

return 1
