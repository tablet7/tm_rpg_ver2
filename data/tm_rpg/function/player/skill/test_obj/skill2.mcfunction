#> tm_rpg:player/skill/test_obj/skill2

# スキル「test設置物ダメージ」の設置物（マグマブロック）の設定。skill1 から execute summon ... run function で呼ばれる
# 動かない弾として扱う（move_entity を付けない）。消えるまで、周りの箱（hit_size 3 ＝ 3マス四方）に入った敵にダメージを与える
# 貫通（pierce）にして、当たっても消えないようにする。同じ敵には1回だけ当たる（main_projectile/hit の tama_hit_id）。0.5秒ごとに当てる版は test_obj_repeat
# 最後に共通の main_projectile/init を呼ぶ（見た目はそれより前に入れる）
# @s ＝ 出したばかりの設置物（item_display）

# 向きをプレイヤーの横の向きに合わせる（skill1 の rotated ~ 0）
rotate @s ~ ~

# 地面の高さに合わせる（前方が1マス高ければ1マス上に置く）
function tm_rpg:player/skill/common/snap_ground

# 当たっても消えない・当たり判定は 3マス四方
tag @s add pierce
scoreboard players set @s hit_size 3

# 見た目（出すときの1回だけ書く）
data merge entity @s {item:{id:"minecraft:magma_block",count:1}}

# 共通の初期設定（基本のタグ・id・ダメージ・func・kill_time）
function tm_rpg:player/skill/main_projectile/init
