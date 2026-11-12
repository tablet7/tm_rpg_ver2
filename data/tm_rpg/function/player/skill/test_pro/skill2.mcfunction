#> tm_rpg:player/skill/test_pro/skill2

# スキル「test飛び道具ダメージ」の弾の設定（見た目・種類・動き）。skill1 から execute summon ... run function で呼ばれる
# 最後に共通の main_projectile/init を呼ぶ（見た目はそれより前に入れる）
# @s ＝ 出したばかりの弾（item_display）。向きはプレイヤーのまま

# 向きをプレイヤーに合わせる（execute summon は向きを引き継がない）
rotate @s ~ ~

# 種類（damage_main がこのタグで、毎 tick test_pro/skill3 を呼ぶ）
tag @s add test_pro
# 動き: まっすぐ1マス/tick、壁で止まる
tag @s add move_entity
tag @s add straight10
tag @s add stop_move

# 見た目（出すときの1回だけ書く）
data merge entity @s {teleport_duration:1,transformation:{left_rotation:[0.9f,0.4f,-0.3f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stone_sword",count:1}}

# 共通の初期設定（基本のタグ・id・ダメージ・func・kill_time）
function tm_rpg:player/skill/main_projectile/init
