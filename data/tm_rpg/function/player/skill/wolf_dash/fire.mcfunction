#> tm_rpg:player/skill/wolf_dash/fire

# ボス「ガーディアンウルフ」の技「突進」の当たりの本体（ダメージ計算のあと）。enemy/skill/warn_wolf_dash（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（予兆付きの入口が enemy/skill/start と player/skill/skill_damage で入れる）
# 体を動かすのはボスのリグ（突進の行動の walk。31〜45 tick 目に 1 マス/tick）。この技は、体の前半について動く見えない当たり判定を2つ出すだけ
# 当たり判定: 3 マス四方（hit_size 3）を2つ。ボスの中心から前へ 2 マスと 4.5 マス、地面から 0〜3 マスの高さ（skill3 が毎 tick 本体の当たり判定へ動かす）
# 2つは同じ id（#wolf_dash_id temp）で hit_interval が無いので、同じ相手には突進のあいだ1回だけ当たる（tag pierce の tama_hit_id）
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ 予兆を出したときのボスの足元、向き ＝ 突進する向き

# 敵（ボス）用だけ。プレイヤーが使う入口（skill1）は無い
execute unless score #skill_side temp matches 1 run return 0

# 当たり判定が付いて行く tick（15 ＝ 突進の 15 tick）
data modify storage tm_rpg:damage kill_time set value 15

# 2つで同じ id を使う（skill2 が写す）
execute store result score #wolf_dash_id temp run random value 0..2147483646

# 近い方（中心から前へ 2 マス）と遠い方（4.5 マス）。どちらかを #wolf_dash_far temp で skill2 に伝える
scoreboard players set #wolf_dash_far temp 0
execute rotated ~ 0 positioned ^ ^1.5 ^2 summon minecraft:marker run function tm_rpg:player/skill/wolf_dash/skill2
scoreboard players set #wolf_dash_far temp 1
execute rotated ~ 0 positioned ^ ^1.5 ^4.5 summon minecraft:marker run function tm_rpg:player/skill/wolf_dash/skill2

# 走り出すときの演出
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_dash/fx/cast
