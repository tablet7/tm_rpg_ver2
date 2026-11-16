#> tm_rpg:player/skill/light_cross/skill2

# スキル「光の十字架」の光の矢の設定（見た目・種類・動き）。fire から execute summon ... run function で呼ばれる
# 最後に共通の main_projectile/init を呼ぶ（見た目はそれより前に入れる）
# @s ＝ 出したばかりの矢（item_display）。実行時の向き ＝ 使った人の向き

rotate @s ~ ~

# 動き: まっすぐ 1 マス/tick、壁で止まる。止まったら当たらない（見た目は kill_time が切れるまで残る）
tag @s add move_entity
tag @s add straight10
tag @s add stop_move
tag @s add stop_harmless
# 貫通しない（最初に当たった1体で消える）。当たり判定は 1 マス四方（init の既定）

# 演出（飛んでいるあいだ ＝ fx/tick、当たったとき ＝ fx/hit）
tag @s add fx_light_cross
tag @s add fx_tick
tag @s add fx_hit

# 見た目（リソースパックの光の矢。設計図 md/skill_md/fx/light_cross_fx.json の model）
function tm_rpg:player/skill/light_cross/fx/model_light_arrow

# 共通の初期設定（基本のタグ・id・ダメージ・func・kill_time）
function tm_rpg:player/skill/main_projectile/init
