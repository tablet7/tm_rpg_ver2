#> tm_rpg:player/skill/test_turret/skill2

# スキル「testタレット」のタレットの設定。skill1 から execute summon ... run function で呼ばれる
# 撃つ間隔・1回目までの tick・見た目を、ここで変える。最後に共通の main_projectile/turret/init を呼ぶ
# @s ＝ 出したばかりのタレット（item_display）。実行位置 ＝ 置く場所（マスの中心）、向き ＝ プレイヤーの横の向き

# 向きをプレイヤーの横の向きに合わせる（敵がいないときは、この向きに撃つ）
rotate @s ~ ~

# 地面の高さに合わせる（本体は地面の高さに置く。浮かせるのは見た目の translation だけ）
function tm_rpg:player/skill/common/snap_ground

# 撃つ関数を turret/tick が呼ぶためのタグ（skill3）
tag @s add test_turret

# 4 秒（80 tick）ごとに撃つ。1回目は置いてから 1 秒後
scoreboard players set @s turret_interval 80
scoreboard players set @s turret_timer 20
# 敵が置いたときは、撃つ 1 秒（20 tick）前に向きを決めて予兆を出す（main_projectile/turret/warn → test_turret/warn）
scoreboard players set @s turret_warn 20

# 見た目（ディスペンサーを 1 マス浮かせる。口の向きが逆なら left_rotation を [0f,1f,0f,0f] にする。teleport_duration で向きを変えるのをなめらかにする）
data merge entity @s {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:dispenser",count:1}}

# 共通の初期設定（ダメージ・撃った人・消えるまでの tick を覚える。当たり判定は外す）
function tm_rpg:player/skill/main_projectile/turret/init
