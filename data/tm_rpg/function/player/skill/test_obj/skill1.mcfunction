#> tm_rpg:player/skill/test_obj/skill1

# スキル「test設置物ダメージ（前方にマグマブロックを置き、周りの敵にダメージを与える）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 設置物は、動かない弾として飛び道具の共通の仕組み（main_projectile）で動かす。設定は skill2
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/test_obj から使う）
function tm_rpg:player/skill/test_obj/fire

return 1
