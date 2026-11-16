#> tm_rpg:player/skill/light_cross/skill5

# スキル「光の十字架」の十字架の設定。fall から execute summon ... run function で呼ばれる
# 上の箱（東西・南北 ±3 マス × 6〜9 マス上）のランダムな位置に動かし、落ちる先（実行位置の 1 マス上）に向けて 1 マス/tick で飛ばす
# 地面・壁で止まって刺さり（stop_harmless で当たらなくなる）、kill_time まで残る。貫通（同じ相手には1回だけ）・当たり判定 2 マス四方
# @s ＝ 出したばかりの十字架（item_display）。実行位置 ＝ 落ちる先の足元

# 箱の角（西 3・上 6・北 3）へ
tp @s ~-3 ~6 ~-3
# 箱の中のランダムな位置へ（0.1 マス単位。common/move_forward を向きを変えて呼ぶ）
# 東へ 0〜6 マス
execute store result score #move temp run random value 0..60
execute rotated -90 0 run function tm_rpg:player/skill/common/move_forward
# 上へ 0〜3 マス
execute store result score #move temp run random value 0..30
execute rotated 0 -90 run function tm_rpg:player/skill/common/move_forward
# 南へ 0〜6 マス
execute store result score #move temp run random value 0..60
execute rotated 0 0 run function tm_rpg:player/skill/common/move_forward

# 落ちる先（足元の 1 マス上 ＝ 体の真ん中）に向ける
rotate @s facing ~ ~1 ~

# 動き: まっすぐ 1 マス/tick、壁・地面で止まる、止まったら当たらない、貫通
tag @s add move_entity
tag @s add straight10
tag @s add stop_move
tag @s add stop_harmless
tag @s add pierce
scoreboard players set @s hit_size 2

# 演出（落ちているあいだ ＝ fx/tick、当たったとき ＝ fx/hit）
tag @s add fx_light_cross_cross
tag @s add fx_tick
tag @s add fx_hit

# 見た目（リソースパックの十字架。設計図 md/skill_md/fx/light_cross_cross_fx.json の model）
function tm_rpg:player/skill/light_cross/cross/fx/model_holy_cross

# 共通の初期設定（十字架ごとに別の id）
function tm_rpg:player/skill/main_projectile/init

# 出たときの演出
execute at @s run function tm_rpg:player/skill/light_cross/cross/fx/spawn

# 管理役が出した子は、出した tick の分も動かす（main の弾のくり返しは、もう対象が決まっているので。spawner/child_init と同じ）
execute if score #light_cross_tick temp matches 1 at @s run function tm_rpg:player/skill/main_projectile/tick
