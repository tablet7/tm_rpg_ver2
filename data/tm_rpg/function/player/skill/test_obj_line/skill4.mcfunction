#> tm_rpg:player/skill/test_obj_line/skill4

# スキル「test設置物連続設置」の子（マグマブロック）の設定。skill3 から execute summon ... run function で呼ばれる
# 動かない弾として扱う（move_entity を付けない）。周りの箱（hit_size 3 ＝ 3マス四方）の中の敵にダメージを与える
# 当たる間隔とグループの id は、最後の spawner/child_init が管理役のものを入れる（全部のマグマブロックで当たり判定を共有する）
# @s ＝ 出したばかりの子（item_display）

# 向きを並べる向き（管理役の向き）に合わせる。斜めに並べたときも、ブロックが列の向きにそろう（見た目だけ。当たり判定の箱は回らない）
rotate @s ~ ~

# 当たっても消えない・当たり判定は 3マス四方
tag @s add pierce
scoreboard players set @s hit_size 3

# 見た目（出すときの1回だけ書く）
data merge entity @s {item:{id:"minecraft:magma_block",count:1}}

# 管理役が出した子の共通の初期設定（main_projectile/init を呼び、グループの id などを入れる）
function tm_rpg:player/skill/main_projectile/spawner/child_init
