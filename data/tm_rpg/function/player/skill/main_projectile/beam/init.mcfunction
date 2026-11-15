#> tm_rpg:player/skill/main_projectile/beam/init

# 太いレーザー（tag beam）の共通の初期設定。スキルのレーザーの設定（<スキル>/skill2）で、main_projectile/init のあとに呼ぶ
# 向いている方向にブロックを調べ、壁までの長さ（最大 beam_length マス）をスコア beam_length に入れ直す。見た目（item_display）もその長さに伸ばす
# 長さは出したときに1回だけ決める（向きを固定するレーザーなので。あとからブロックが置かれても変わらない）
# 先にスキル側で入れておくもの
#   スコア beam_length … 最大の長さ（マス）
#   スコア hit_interval … 当たる間隔（main_projectile/init より前）。tag pierce も付ける（当たっても消えない）
#   tag beam … 当たり判定を線に沿って動かす（main_projectile/beam/hit）
#   tag beam_end_rod ＋ image_marker … 線に沿って end_rod のパーティクルを出す（main_projectile/beam/end_rod）
#   見た目の item_display の transformation（太さ・item）。この関数が scale と translation の z（長さの向き）を上書きする
# @s ＝ レーザー（at @s。向き ＝ 撃つ向き）

# 壁までの長さ（1マスずつ、通れるブロックの間だけ数える）
scoreboard players operation #beam_max temp = @s beam_length
scoreboard players set @s beam_length 0
execute positioned ^ ^ ^1 run function tm_rpg:player/skill/main_projectile/beam/scan

# 見た目を長さに合わせる（item_display の中心から、前へ長さぶん伸ばす。向きはエンティティの向き）
execute if entity @s[type=minecraft:item_display] store result entity @s transformation.scale[2] float 1 run scoreboard players get @s beam_length
execute if entity @s[type=minecraft:item_display] store result entity @s transformation.translation[2] float 0.5 run scoreboard players get @s beam_length
