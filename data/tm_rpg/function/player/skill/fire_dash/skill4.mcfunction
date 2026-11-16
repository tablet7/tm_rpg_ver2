#> tm_rpg:player/skill/fire_dash/skill4

# スキル「炎の突進」の、体のまわりの当たり判定（見えない marker）の設定。dash から execute summon ... run function で呼ばれる
# 3 マス四方（hit_size 3）・貫通（当たっても消えない。同じ相手には1回だけ）。毎 tick skill5 が使った人の場所へ動かす
# 消えるまでの tick は storage tm_rpg:damage kill_time（fire が 10 を入れる）
# @s ＝ 出したばかりの当たり判定（marker）

rotate @s ~ ~

# 毎 tick の処理（skill5）を damage_main が呼ぶためのタグ
tag @s add fire_dash_hit
tag @s add pierce
scoreboard players set @s hit_size 3

# 出ているあいだ・当たったときの演出
tag @s add fx_fire_dash
tag @s add fx_tick
tag @s add fx_hit

# 弾の共通の初期設定
function tm_rpg:player/skill/main_projectile/init

# 突進を始めたときの演出
execute at @s run function tm_rpg:player/skill/fire_dash/fx/spawn
