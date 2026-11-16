#> tm_rpg:player/skill/test_laser_twin/skill3

# スキル「test双子レーザー」のレーザーの設定。skill2（タレット）から execute summon ... run function で呼ばれる
# 長さ・太さ・当たる間隔・円の大きさと速さと向き・見た目を、ここで変える
# 円は test_laser_circle と同じ（半径 20 度・1周 2秒）。回る向きはタレットの #twin_dir temp
# @s ＝ 出したばかりのレーザー（item_display）。実行位置 ＝ タレットの少し前、向き ＝ 使う向き（円の中心）

# 向きを使う向きに合わせる（円の中心。beam/init が円のいちばん上へずらす）
rotate @s ~ ~

# 最大の長さ（マス。beam/init・beam/sweep が壁までの長さにする）
scoreboard players set @s beam_length 20

# 当たり判定の太さ（3 マス四方）と、10 tick ごとに当たる（hit_interval は init より前に入れる）
scoreboard players set @s hit_size 3
scoreboard players set @s hit_interval 10

# 円の描き方（beam/init より前に入れる）: 半径 20 度・1周 40 tick（2秒）・回る向きはタレットが決める（1 右回り・-1 左回り）
scoreboard players set @s circle_radius 20
scoreboard players set @s circle_period 40
scoreboard players operation @s circle_dir = #twin_dir temp
# 円の中心は動かさない（入れると、円を描きながら中心がこの速さで動く。0.1 度/tick）
scoreboard players set @s sweep_yaw 0
scoreboard players set @s sweep_pitch 0

# 種類: 線に沿って当たる・貫通・円を描く・end_rod のパーティクル・ガラスを前後の軸のまわりに高速で回す
tag @s add beam
tag @s add pierce
tag @s add beam_circle
# もう一度使ったとき、タレットと一緒に消すためのタグ（fire）
tag @s add laser_twin
tag @s add image_marker
tag @s add beam_end_rod
tag @s add spin_roll

# 見た目（光る紫のガラスを太さ 1.2 にする。長さは beam/init・beam/sweep が入れる。teleport_duration は向きの変化を、interpolation_duration は spin_roll の回転をなめらかに見せるため）
data merge entity @s {teleport_duration:1,interpolation_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1f]},item:{id:"minecraft:purple_stained_glass",count:1}}

# 弾の共通の初期設定と、レーザーの共通の初期設定（壁までの長さ・見た目の長さ・向きのスコア・円のいちばん上へずらす）
function tm_rpg:player/skill/main_projectile/init
function tm_rpg:player/skill/main_projectile/beam/init
