#> tm_rpg:player/skill/wolf_ring/fire

# ボス「ガーディアンウルフ」の第2形態の技「広がる円の衝撃波」の本体（ダメージ計算のあと）。enemy/skill/warn_wolf_ring（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（予兆付きの入口が enemy/skill/start と player/skill/skill_damage で入れる）
# たたきつけ・飛び掛かりの着地と同時に、実行位置から外へ広がる輪の衝撃波を出す
# 見えない弾（marker）24 発を、15 度ずつ全方向へ、高さ 1 から 1 マス/tick でまっすぐ飛ばす（9 tick で 約 9 マス。弾1つが 3 マス四方なので、半径 約 10.5 マスまで当たる）
# 半径 10 マスで弾の間が 約 2.6 マスなので、3 マス四方の当たり判定ですき間なく当たる。壁・段差で止まる
# 24 発は同じ id（#wolf_ring_id temp）で、同じ相手には1回だけ当たる。当たった人に破裂（hit_func）
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ 輪の中心（たたきつける所・着地点）

# 敵（ボス）用だけ。プレイヤーが使う入口（skill1）は無い
execute unless score #skill_side temp matches 1 run return 0

# 消えるまでの tick（9 ＝ 0.45 秒。1 マス/tick で進むので、約 9 マス）
data modify storage tm_rpg:damage kill_time set value 9
# 当たった相手に付ける破裂（弾が持ち、当たったときに相手を @s にして呼ばれる）
data modify storage tm_rpg:damage func set value "tm_rpg:player/skill/wolf_ring/hit_func"

# 24 発で同じ id を使う（skill2 が写す）
execute store result score #wolf_ring_id temp run random value 0..2147483646

# 24 発（15 度ずつ。向きは絶対の角度。マクロを使わず1行ずつ書く）
execute positioned ~ ~1 ~ rotated 0 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 15 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 30 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 45 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 60 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 75 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 90 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 105 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 120 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 135 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 150 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 165 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 180 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 195 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 210 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 225 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 240 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 255 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 270 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 285 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 300 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 315 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 330 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2
execute positioned ~ ~1 ~ rotated 345 0 summon minecraft:marker run function tm_rpg:player/skill/wolf_ring/skill2

# 使ったときの演出（広がる黄色い輪）
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_ring/fx/cast
