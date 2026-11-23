#> tm_rpg:player/skill/fairy/skill2

# スキル「妖精」の見えないレーザー1本の設定。fire から execute summon ... run function で2回呼ばれる（左右）
# 長さ・太さを、ここで変える。見た目は無い（演出は fx/cast のパーティクル）
# @s ＝ 出したばかりのレーザー（marker）。実行位置 ＝ レーザーの始まり（目の位置から左右へ 0.5 マス）、向き ＝ 使う向き

# 向きを合わせる（使った瞬間の向き。上下もふくむ）
rotate @s ~ ~

# 最大の長さ（マス。beam/init が壁までの長さにする）。10 ＝ 当たり判定の箱が、始まりから 1・3・5・7・9 マス先の5つ
scoreboard players set @s beam_length 10

# 当たり判定の太さ（3 マス四方。共通の当たり判定の上限）。hit_interval は入れない（一度だけ当たる）
scoreboard players set @s hit_size 3

# 種類: 線に沿って当たる・貫通（当たっても消えない。同じ相手には1回だけ）
tag @s add beam
tag @s add pierce

# 弾の共通の初期設定と、レーザーの共通の初期設定（壁までの長さ）
function tm_rpg:player/skill/main_projectile/init
function tm_rpg:player/skill/main_projectile/beam/init

# 2本で同じ id にする（pierce の弾は、当たった相手に tama_hit_id ＝ 弾の ent_id を入れて、同じ id の弾には当たらない）
scoreboard players operation @s ent_id = #fairy_id temp
