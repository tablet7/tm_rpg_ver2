#> tm_rpg:player/skill/test_laser/skill2

# スキル「test太いレーザー」のレーザーの設定。skill1 から execute summon ... run function で呼ばれる
# 長さ・太さ・当たる間隔・見た目を、ここで変える
# @s ＝ 出したばかりのレーザー（item_display）。実行位置 ＝ プレイヤーの目、向き ＝ プレイヤーの向き

# 向きをプレイヤーの向きに合わせる（撃った瞬間の向きで固定）
rotate @s ~ ~

# 最大の長さ（マス。beam/init が壁までの長さにする）
scoreboard players set @s beam_length 20

# 当たり判定の太さ（3 マス四方）と、10 tick ごとに当たる（hit_interval は init より前に入れる）
scoreboard players set @s hit_size 3
scoreboard players set @s hit_interval 10

# 種類: 線に沿って当たる・貫通・end_rod のパーティクル・ガラスを前後の軸のまわりに高速で回す
tag @s add beam
tag @s add pierce
tag @s add image_marker
tag @s add beam_end_rod
tag @s add spin_roll

# 見た目（光る水色のガラスを太さ 1.2 にする。長さ（scale と translation の z）は beam/init が入れる。interpolation_duration は spin_roll の回転をなめらかに見せるため）
data merge entity @s {interpolation_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1f]},item:{id:"minecraft:light_blue_stained_glass",count:1}}

# 弾の共通の初期設定と、レーザーの共通の初期設定（壁までの長さ・見た目の長さ）
function tm_rpg:player/skill/main_projectile/init
function tm_rpg:player/skill/main_projectile/beam/init
