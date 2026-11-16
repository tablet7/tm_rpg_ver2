#> tm_rpg:player/skill/fire_dash/skill1

# スキル「炎の突進（炎をまとい、10 tick 溜めてから前方へ約 7 マス突進する。突進中に触れた敵にダメージと火傷）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 速度はエンチャント tm_rpg:dash_impulse で加えるので、表（skills.csv）の dash を 1 にしてある。溜めのあいだに持ち替えると突進しない
#   fire     … 本体（敵も使う）。プレイヤーは溜めの管理役（skill2）を出す
#   skill2   … 溜めの管理役（10 tick 後に skill3 を呼ぶ）
#   skill3   … 溜めが終わった tick に、使った人を探して dash を呼ぶ
#   dash     … 突進（速度を加え、当たり判定 skill4 を出す）
#   skill4   … 当たり判定の設定、skill5 … 当たり判定の毎 tick（使った人に付いて行く）
#   hit_func … 当たった相手に付ける火傷
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/warn_fire_dash から、予兆のあとに使う）
function tm_rpg:player/skill/fire_dash/fire

return 1
