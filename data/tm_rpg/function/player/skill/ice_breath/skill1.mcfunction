#> tm_rpg:player/skill/ice_breath/skill1

# スキル「氷のブレス（前方に氷の息を吐き続け、0.5秒ごとに当たった敵にダメージ・鈍足・沈潜を与える）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 目の位置から、使った瞬間の向きで固定した見えないレーザー（marker。main_projectile/beam）3本を扇形に出す
#   fire     … 本体（敵も使う）
#   skill2   … レーザー1本の設定（長さ・太さ・当たる間隔）
#   hit_func … 当たった相手に付ける効果（鈍足・沈潜）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_ice_breath から、予兆のあとに使う）
function tm_rpg:player/skill/ice_breath/fire

return 1
