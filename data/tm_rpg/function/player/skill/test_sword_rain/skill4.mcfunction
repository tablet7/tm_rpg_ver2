#> tm_rpg:player/skill/test_sword_rain/skill4

# スキル「test剣の雨」の剣の設定。skill3 から execute summon ... run function で呼ばれる
# 管理役の上の箱（管理役の向きに回る。左2〜右6 × 足元から 10〜15 マス上 × 後ろ2〜前2）のランダムな位置に動かし、
# 管理役のいた場所（実行位置）に向けて 1マス/tick で飛ばす。地面で止まって刺さり（stop_harmless で当たらなくなる）、kill_time まで残る
# 貫通（pierce）なので、落ちる途中の敵に当たっても消えずに地面まで行く。剣ごとに別々に当たる（管理役の tag spawn_separate）
# @s ＝ 出したばかりの剣（item_display）。実行位置・向き ＝ 管理役の位置・向き

# 箱の角（左 2・上 5・後ろ 2）へ
tp @s ^2 ^5 ^-2

# 箱の中のランダムな位置へ（0.1 マス単位。common/move_forward を向きを変えて呼ぶ。1回に 25.5 マスまで）
# 右へ 0〜8 マス
execute store result score #move temp run random value 0..80
execute rotated ~90 0 run function tm_rpg:player/skill/common/move_forward
# 上へ 5〜10 マス
execute store result score #move temp run random value 50..100
execute rotated ~ -90 run function tm_rpg:player/skill/common/move_forward
# 前へ 0〜4 マス
execute store result score #move temp run random value 0..40
execute rotated ~ 0 run function tm_rpg:player/skill/common/move_forward

# 管理役のいた場所（実行位置 ~ ~ ~）に向ける。刺さる場所が spawn_step の間隔で並ぶ
rotate @s facing ~ ~ ~

# 種類と動き: まっすぐ 1マス/tick、地面で止まる、止まったら当たらない、貫通
tag @s add move_entity
tag @s add straight10
tag @s add stop_move
tag @s add stop_harmless
tag @s add pierce

# 見た目（刃先を進む向きに向ける回転。test_pro/skill2 の剣と同じ left_rotation）
data merge entity @s {teleport_duration:1,transformation:{left_rotation:[0.9f,0.4f,-0.3f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:iron_sword",count:1}}

# 管理役が出した子の共通の初期設定（main_projectile/init を呼ぶ。spawn_separate なので id は剣ごと）
function tm_rpg:player/skill/main_projectile/spawner/child_init
