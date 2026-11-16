#> tm_rpg:player/skill/fly_slash/skill2

# スキル「飛斬」の弾の設定（見た目・種類・動き）。fire から execute summon ... run function で呼ばれる
# 最後に共通の main_projectile/init を呼ぶ（見た目はそれより前に入れる）
# @s ＝ 出したばかりの弾（item_display）。実行時の向き ＝ 使った人の向き

# 向きを実行時の向きに合わせる（execute summon は向きを引き継がない）
rotate @s ~ ~

# 動き: まっすぐ 1 マス/tick、壁で止まる。止まったら当たらない（見た目は kill_time が切れるまで残る）
tag @s add move_entity
tag @s add straight10
tag @s add stop_move
tag @s add stop_harmless
# 貫通する（同じ敵には1回だけ当たる）
tag @s add pierce
# 当たり判定は 2 マス四方（見た目を傾けても、当たり判定の箱は傾かない）
scoreboard players set @s hit_size 2

# 演出（飛んでいるあいだ・出ているあいだ ＝ fx/tick、当たったとき ＝ fx/hit。player/skill/fx が呼び分ける。使わない場面の行は消す）
tag @s add fx_fly_slash
tag @s add fx_tick
tag @s add fx_hit

# 見た目（出すときの1回だけ）: リソースパックのモデル（fx/model_crescent。大きさ・傾き・色は演出の設計図 md/skill_md/fx/fly_slash_fx.json の model）
function tm_rpg:player/skill/fly_slash/fx/model_crescent

# 共通の初期設定（基本のタグ・id・ダメージ・func・kill_time）
function tm_rpg:player/skill/main_projectile/init
