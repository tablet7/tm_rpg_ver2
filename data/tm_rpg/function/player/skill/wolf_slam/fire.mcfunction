#> tm_rpg:player/skill/wolf_slam/fire

# ボス「ガーディアンウルフ」の技「たたきつけ」の本体（ダメージ計算のあと）。enemy/skill/warn_wolf_slam（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（予兆付きの入口が enemy/skill/start と player/skill/skill_damage で入れる）
# 当たる範囲: 実行位置から半径 4 マス。ボスのリグが、突進が止まった場所の 5 マス先（右手をたたきつける所）で予兆を出す（skills の offset）
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ たたきつける所（地面）

# 敵（ボス）用だけ。プレイヤーが使う入口（skill1）は無い
execute unless score #skill_side temp matches 1 run return 0

# 範囲の中のプレイヤーに印（tag wolf_hit）を付ける
tag @a[tag=mob,gamemode=!spectator,distance=..4] add wolf_hit

# 印の付いた人に1回ずつ当てる（範囲が重なっても1回）。ノックバックを与える人（damage_dealt の damage ... by @e[tag=temp_victim]）は自分。当てたらすぐ外す
execute if entity @a[tag=wolf_hit,limit=1] run tag @s add temp_victim
execute as @a[tag=wolf_hit] at @s run function tm_rpg:system/damage_ex/damage_dealt
tag @a[tag=wolf_hit] remove wolf_hit
tag @s remove temp_victim

# 使ったときの演出（地面の爆発と土煙の輪）
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_slam/fx/cast
