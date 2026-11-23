#> tm_rpg:player/skill/wolf_swipe/fire

# ボス「ガーディアンウルフ」の技「振り払い」の本体（ダメージ計算のあと）。enemy/skill/warn_wolf_swipe（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（予兆付きの入口が enemy/skill/start と player/skill/skill_damage で入れる）
# 当たる範囲: 前方 約 0〜12.6 マス・幅 約 6.5 マスの細長い範囲（ボスの中心から測る。鼻先は 約 6 マス前）
#   前方 3.25・5.25・7.25・9.25 マスを中心にした半径 3.4 マスの球を4つ並べる（隣と重ねて、すき間でも幅 6.5 マスある）
#   選択範囲の箱（dx/dy/dz）は回らないので、向きに沿った細長い範囲は球を並べて作る
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ ボスの足元の中心、向き ＝ 振る向き

# 敵（ボス）用だけ。プレイヤーが使う入口（skill1）は無い
execute unless score #skill_side temp matches 1 run return 0

# 範囲の中のプレイヤーに印（tag wolf_hit）を付ける（上下の向きは無視する）
execute rotated ~ 0 positioned ^ ^ ^3.25 run tag @a[tag=mob,gamemode=!spectator,distance=..3.4] add wolf_hit
execute rotated ~ 0 positioned ^ ^ ^5.25 run tag @a[tag=mob,gamemode=!spectator,distance=..3.4] add wolf_hit
execute rotated ~ 0 positioned ^ ^ ^7.25 run tag @a[tag=mob,gamemode=!spectator,distance=..3.4] add wolf_hit
execute rotated ~ 0 positioned ^ ^ ^9.25 run tag @a[tag=mob,gamemode=!spectator,distance=..3.4] add wolf_hit

# 印の付いた人に1回ずつ当てる（範囲が重なっても1回）。ノックバックを与える人（damage_dealt の damage ... by @e[tag=temp_victim]）は自分。当てたらすぐ外す
execute if entity @a[tag=wolf_hit,limit=1] run tag @s add temp_victim
execute as @a[tag=wolf_hit] at @s run function tm_rpg:system/damage_ex/damage_dealt
tag @a[tag=wolf_hit] remove wolf_hit
tag @s remove temp_victim

# 使ったときの演出（当たる範囲に沿った大きな斬撃）
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_swipe/fx/cast
