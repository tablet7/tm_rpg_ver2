#> tm_rpg:player/skill/wolf_dash/skill2

# ボス「ガーディアンウルフ」の突進の当たり判定（見えない marker）1つの設定。fire から execute summon ... run function で2回呼ばれる
# 3 マス四方（hit_size 3）・貫通（当たっても消えない）。毎 tick skill3 がボスの体の前半へ動かす
# 消えるまでの tick は storage tm_rpg:damage kill_time（fire が 15 を入れる）
# @s ＝ 出したばかりの当たり判定（marker）。実行時の向き ＝ 突進する向き

rotate @s ~ ~

# 毎 tick の処理（skill3）を damage_main が呼ぶためのタグ。遠い方（中心から 4.5 マス前）は tag wolf_dash_far
tag @s add wolf_dash_hit
execute if score #wolf_dash_far temp matches 1 run tag @s add wolf_dash_far
tag @s add pierce
scoreboard players set @s hit_size 3

# 出ているあいだ・当たったときの演出
tag @s add fx_wolf_dash
tag @s add fx_tick
tag @s add fx_hit

# 弾の共通の初期設定
function tm_rpg:player/skill/main_projectile/init

# 2つで同じ id にする（pierce の弾は、当たった相手に tama_hit_id ＝ 弾の ent_id を入れて、同じ id の弾には当たらない）
scoreboard players operation @s ent_id = #wolf_dash_id temp
