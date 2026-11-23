#> tm_rpg:player/skill/wolf_ring/skill2

# ボス「ガーディアンウルフ」の広がる円の衝撃波の弾（見えない marker）1つの設定。fire から execute summon ... run function で 24 回呼ばれる
# 最後に共通の main_projectile/init を呼ぶ
# @s ＝ 出したばかりの弾（marker）。実行時の向き ＝ 飛ぶ向き（水平）

# 向きを実行時の向きに合わせる（execute summon は向きを引き継がない）
rotate @s ~ ~

# 動き: まっすぐ 1 マス/tick、壁で止まる。止まったら当たらない
tag @s add move_entity
tag @s add straight10
tag @s add stop_move
tag @s add stop_harmless
# 貫通する（同じ相手には1回だけ当たる）
tag @s add pierce
# 当たり判定は 3 マス四方
scoreboard players set @s hit_size 3

# 演出（飛んでいるあいだ ＝ fx/tick、当たったとき ＝ fx/hit。player/skill/fx が呼び分ける）。見た目はパーティクルだけ（marker は見えない）
tag @s add fx_wolf_ring
tag @s add fx_tick
tag @s add fx_hit

# 共通の初期設定（基本のタグ・id・ダメージ・func・kill_time）
function tm_rpg:player/skill/main_projectile/init

# 24 発で同じ id にする（pierce の弾は、当たった相手に tama_hit_id ＝ 弾の ent_id を入れて、同じ id の弾には当たらない）
scoreboard players operation @s ent_id = #wolf_ring_id temp
