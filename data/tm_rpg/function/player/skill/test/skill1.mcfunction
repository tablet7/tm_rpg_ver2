#> tm_rpg:player/skill/test/skill1

# テスト用スキル（前方3マスの範囲にダメージ）。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/test から使う）
function tm_rpg:player/skill/test/fire

return 1
