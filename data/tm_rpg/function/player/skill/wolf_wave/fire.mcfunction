#> tm_rpg:player/skill/wolf_wave/fire

# ボス「ガーディアンウルフ」の第2形態の技「黄色い衝撃波」の本体（ダメージ計算のあと）。enemy/skill/warn_wolf_wave（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（予兆付きの入口が enemy/skill/start と player/skill/skill_damage で入れる）
# 振り払いと同時に、前へ地面をはう衝撃波を出す。見えない弾（marker）を左右へ 1.5 マスずらして2つ、ボスの中心から 1.5 マス前・高さ 1 から、1 マス/tick でまっすぐ飛ばす
# 当たる範囲: 弾1つが 3 マス四方（hit_size 3）なので、幅 約 6 マス・前方 約 0〜24 マス（21 tick で 21 マス進む）。壁・段差で止まる
# 2つは同じ id（#wolf_wave_id temp）で、同じ相手には1回だけ当たる。当たった人に破裂（hit_func）
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ ボスの足元の中心、向き ＝ 振る向き

# 敵（ボス）用だけ。プレイヤーが使う入口（skill1）は無い
execute unless score #skill_side temp matches 1 run return 0

# 消えるまでの tick（21 ＝ 1.05 秒。1 マス/tick で進むので、射程は約 21 マス）
data modify storage tm_rpg:damage kill_time set value 21
# 当たった相手に付ける破裂（弾が持ち、当たったときに相手を @s にして呼ばれる）
data modify storage tm_rpg:damage func set value "tm_rpg:player/skill/wolf_wave/hit_func"

# 2つで同じ id を使う（skill2 が写す）
execute store result score #wolf_wave_id temp run random value 0..2147483646

# 弾2つ（右・左へ 1.5 マス）。上下の向きは無視して、地面と平らに飛ばす
execute rotated ~ 0 positioned ^-1.5 ^1 ^1.5 summon minecraft:marker run function tm_rpg:player/skill/wolf_wave/skill2
execute rotated ~ 0 positioned ^1.5 ^1 ^1.5 summon minecraft:marker run function tm_rpg:player/skill/wolf_wave/skill2

# 使ったときの演出
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_wave/fx/cast
