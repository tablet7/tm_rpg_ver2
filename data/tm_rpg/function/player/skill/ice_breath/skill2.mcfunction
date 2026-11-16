#> tm_rpg:player/skill/ice_breath/skill2

# スキル「氷のブレス」の見えないレーザー1本の設定。fire から execute summon ... run function で3回呼ばれる（中央・左右）
# 長さ・太さ・当たる間隔を、ここで変える。見た目は無い（演出は fx/tick のパーティクル）
# @s ＝ 出したばかりのレーザー（marker）。実行位置 ＝ レーザーの始まり、向き ＝ レーザーの向き

# 向きを合わせる（使った瞬間の向きで固定）
rotate @s ~ ~

# 最大の長さ（マス。beam/init が壁までの長さにする）。4 ＝ 当たり判定の箱が、始まりから 1・3 マス先の2つ
scoreboard players set @s beam_length 4

# 当たり判定の太さ（3 マス四方）と、10 tick（0.5 秒）ごとに当たる（hit_interval は init より前に入れる）
scoreboard players set @s hit_size 3
scoreboard players set @s hit_interval 10

# 種類: 線に沿って当たる・貫通（当たっても消えない）
tag @s add beam
tag @s add pierce

# 出ているあいだの演出（fx/tick。レーザーごとに、その向きへ吹き出す）
tag @s add fx_ice_breath
tag @s add fx_tick

# 弾の共通の初期設定と、レーザーの共通の初期設定（壁までの長さ）
function tm_rpg:player/skill/main_projectile/init
function tm_rpg:player/skill/main_projectile/beam/init

# 3本で同じ id にする（main_projectile/interval が、当たる tick ごとに hit_base_id ＋ 回数 を id にする。開始時刻は同じ tick なので同じ）
scoreboard players operation @s ent_id = #ice_breath_id temp
scoreboard players operation @s hit_base_id = #ice_breath_id temp
