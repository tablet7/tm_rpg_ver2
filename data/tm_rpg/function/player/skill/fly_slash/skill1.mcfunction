#> tm_rpg:player/skill/fly_slash/skill1

# スキル「飛斬（前方に斜めの斬撃を飛ばし、当たった敵すべてにダメージを与える）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 弾の設定は skill2、演出は fx/（md/skill_md/fx/fly_slash_fx.json から自動生成）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_fly_slash から使う）
function tm_rpg:player/skill/fly_slash/fire

return 1
