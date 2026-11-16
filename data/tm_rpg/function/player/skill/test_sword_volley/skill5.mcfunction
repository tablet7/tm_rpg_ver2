#> tm_rpg:player/skill/test_sword_volley/skill5

# スキル「test剣の一斉射撃」の待つ剣の設定。summon_loop から execute summon ... run function で呼ばれる（fire 経由）
# プレイヤーの頭上の箱（プレイヤーの向きに回る。左右5 × 足元から 3〜5 マス上 × 前後1）のランダムな位置に、前向きで出す
# 当たり判定を外して、上下に揺れて待つ（image_marker の float_bob）。skill4 で撃たれるまで動かない
# @s ＝ 出したばかりの剣（item_display）。実行位置 ＝ プレイヤーの足元、向き ＝ プレイヤーの横の向き

# 箱の角（左 2・上 3）へ
tp @s ^2 ^3 ^

# 箱の中のランダムな位置へ（0.1 マス単位。common/move_forward を向きを変えて呼ぶ）
# 右へ 0〜4 マス
execute store result score #move temp run random value 0..40
execute rotated ~90 0 run function tm_rpg:player/skill/common/move_forward
# 上へ 0〜2 マス
execute store result score #move temp run random value 0..20
execute rotated ~ -90 run function tm_rpg:player/skill/common/move_forward

# 前（撃つ方向）に向ける
rotate @s ~ ~

# この発動の id（管理役が自分の剣を探すのに使う）
scoreboard players operation @s spawner_id = #spawner_id temp

# 待つ間のタグと、撃ったあとの動き（地面で止まる・止まったら当たらない・貫通）
tag @s add sword_volley_wait
tag @s add image_marker
tag @s add float_bob
tag @s add stop_move
tag @s add stop_harmless
tag @s add pierce

# 揺れ始めをずらす（剣ごとにばらばらに揺れる。float_bob）
execute store result score @s bob_timer run random value 0..39

# 見た目（刃先を進む向きに向ける回転。test_pro/skill2 の剣と同じ left_rotation）
data merge entity @s {teleport_duration:1,transformation:{left_rotation:[0.9f,0.4f,-0.3f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:iron_sword",count:1}}

# 弾の共通の初期設定（ダメージ・撃った人・id・消えるまでの tick）。待っている間は当たらないように、当たり判定を外す（skill4 で付ける）
function tm_rpg:player/skill/main_projectile/init
tag @s remove damage_marker
