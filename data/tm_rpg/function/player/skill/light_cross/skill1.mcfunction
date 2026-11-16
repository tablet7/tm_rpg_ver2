#> tm_rpg:player/skill/light_cross/skill1

# スキル「光の十字架（向いている方向へ光の矢を放ち、当たった敵の上空から光の十字架を3本落とす）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
#   fire     … 本体（敵も使う）。光の矢を出す
#   skill2   … 光の矢の設定
#   hit_func … 矢が当たった相手に、十字架を落とす管理役（skill4）を出す（敵の矢は hit_func_enemy）
#   skill4   … 管理役の設定（3 tick ごとに3本）、skill3 … 管理役が十字架を1本落とす（spawner/spawn から）
#   fall     … その場所めがけて十字架を1本出す、skill5 … 十字架の設定
# ダメージは skills.csv の値が十字架1本ぶん。矢はその 2/5（fire で減らし、hit_spawn で戻す）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_light_cross から、予兆のあとに使う）
function tm_rpg:player/skill/light_cross/fire

return 1
