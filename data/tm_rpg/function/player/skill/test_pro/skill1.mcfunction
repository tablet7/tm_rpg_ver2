#> tm_rpg:player/skill/test_pro/skill1

# スキル「test飛び道具ダメージ（前方・近くの敵に向けて・右上から追尾・左に爆発、の4つの飛び道具を飛ばす）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 弾の見た目と種類は skill2（追尾する弾は skill4、爆発する弾は skill5 から skill2）、弾の毎 tick の処理は skill3 に書く
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/test_pro から使う）
function tm_rpg:player/skill/test_pro/fire

return 1
