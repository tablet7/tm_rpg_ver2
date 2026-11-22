#> tm_rpg:player/skill/wolf_tail/fire

# ボス「ガーディアンウルフ」の技「尻尾払い」の本体（ダメージ計算のあと）。enemy/skill/warn_wolf_tail（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（予兆付きの入口が enemy/skill/start と player/skill/skill_damage で入れる）
# 当たる範囲: ボスの中心から半径 10 マス（尻尾の先 約 6.6 マスより 3〜4 マス外まで）。体が回り始める tick に一度だけ当てる
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ ボスの足元の中心

# 敵（ボス）用だけ。プレイヤーが使う入口（skill1）は無い
execute unless score #skill_side temp matches 1 run return 0

# 範囲の中のプレイヤーに印（tag wolf_hit）を付ける
tag @a[tag=mob,gamemode=!spectator,distance=..10] add wolf_hit

# 印の付いた人に1回ずつ当てる（範囲が重なっても1回）。ノックバックを与える人（damage_dealt の damage ... by @e[tag=temp_victim]）は自分。当てたらすぐ外す
execute if entity @a[tag=wolf_hit,limit=1] run tag @s add temp_victim
execute as @a[tag=wolf_hit] at @s run function tm_rpg:system/damage_ex/damage_dealt
tag @a[tag=wolf_hit] remove wolf_hit
tag @s remove temp_victim

# 使ったときの演出（回る尻尾の輪と風）
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_tail/fx/cast
