#> tm_rpg:player/skill/wolf_leap/fire

# ボス「ガーディアンウルフ」の技「飛び掛かり」の着地の本体（ダメージ計算のあと）。enemy/skill/warn_wolf_leap（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（予兆付きの入口が enemy/skill/start と player/skill/skill_damage で入れる）
# 当たる範囲: 着地点から半径 7 マス（体の半分の長さ 約 6.6 マスより少し外まで）
#   着地点は、飛ぶ瞬間にいちばん近いプレイヤーの足元（リグの skills の "at": "player"）。予兆は飛んでいるあいだ（20 tick）出る
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ 着地点

# 敵（ボス）用だけ。プレイヤーが使う入口（skill1）は無い
execute unless score #skill_side temp matches 1 run return 0

# 範囲の中のプレイヤーに印（tag wolf_hit）を付ける
tag @a[tag=mob,gamemode=!spectator,distance=..7] add wolf_hit

# 印の付いた人に1回ずつ当てる（範囲が重なっても1回）。ノックバックを与える人（damage_dealt の damage ... by @e[tag=temp_victim]）は自分。当てたらすぐ外す
execute if entity @a[tag=wolf_hit,limit=1] run tag @s add temp_victim
execute as @a[tag=wolf_hit] at @s run function tm_rpg:system/damage_ex/damage_dealt
tag @a[tag=wolf_hit] remove wolf_hit
tag @s remove temp_victim

# 使ったときの演出（着地の爆発と土煙の輪）
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_leap/fx/cast
