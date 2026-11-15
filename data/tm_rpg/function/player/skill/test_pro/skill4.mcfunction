#> tm_rpg:player/skill/test_pro/skill4

# スキル「test飛び道具ダメージ」の追尾する弾の設定。skill1 から execute summon ... run function で呼ばれる
# 追尾のタグを付けてから、ふつうの弾と同じ skill2（見た目・種類・動き・共通の初期設定）を呼ぶ
# @s ＝ 出したばかりの弾（item_display）。実行時の向きは、プレイヤーの向きから右上に向けた向き

# 追尾する（近くの敵の方へ 10°/tick で曲がる。system/delete_entity_direction/homing/main）
tag @s add homing
tag @s add homing10

function tm_rpg:player/skill/test_pro/skill2
