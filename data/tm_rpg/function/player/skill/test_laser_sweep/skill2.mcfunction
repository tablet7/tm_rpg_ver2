#> tm_rpg:player/skill/test_laser_sweep/skill2

# スキル「test振り上げレーザー」のレーザーの設定。fire から execute summon ... run function で呼ばれる
# 長さ・太さ・当たる間隔・向きの変わり方・見た目を、ここで変える
# @s ＝ 出したばかりのレーザー（item_display）。実行位置 ＝ 使った人の目の1マス前、向き ＝ 出す向き（fire の rotated）

# 向きを出す向きに合わせる
rotate @s ~ ~

# 最大の長さ（マス。beam/init・beam/sweep が壁までの長さにする）
scoreboard players set @s beam_length 20

# 当たり判定の太さ（3 マス四方）と、10 tick ごとに当たる（hit_interval は init より前に入れる）
scoreboard players set @s hit_size 3
scoreboard players set @s hit_interval 10

# 向きの変わり方（0.1 度/tick）。上へ 2 度/tick（40 tick で 80 度）。左右は変えない（beam/init より前に入れる）
scoreboard players set @s sweep_pitch -20
scoreboard players set @s sweep_yaw 0

# 種類: 線に沿って当たる・貫通・向きが変わる・end_rod のパーティクル・ガラスを前後の軸のまわりに高速で回す
tag @s add beam
tag @s add pierce
tag @s add beam_sweep
tag @s add image_marker
tag @s add beam_end_rod
tag @s add spin_roll

# 見た目（光る赤のガラスを太さ 1.2 にする。長さは beam/init・beam/sweep が入れる。teleport_duration は向きの変化を、interpolation_duration は spin_roll の回転をなめらかに見せるため）
data merge entity @s {teleport_duration:1,interpolation_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1f]},item:{id:"minecraft:red_stained_glass",count:1}}

# 弾の共通の初期設定と、レーザーの共通の初期設定（壁までの長さ・見た目の長さ・向きのスコア）
function tm_rpg:player/skill/main_projectile/init
function tm_rpg:player/skill/main_projectile/beam/init
