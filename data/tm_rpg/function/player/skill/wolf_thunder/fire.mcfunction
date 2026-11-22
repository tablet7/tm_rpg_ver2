#> tm_rpg:player/skill/wolf_thunder/fire

# ボス「ガーディアンウルフ」の技「雷」1発の本体（ダメージ計算のあと）。enemy/skill/warn_wolf_thunder（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（予兆付きの入口が enemy/skill/start と player/skill/skill_damage で入れる）
# 当たる範囲: 落ちる場所から半径 1.5 マス。当たった人に破裂（hit_func）
# 本物の lightning_bolt は使わない（ダメージ・火事・音が決められないため）。稲妻と爆発はパーティクル（fx/cast）
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ 落ちる場所（地面）

# 敵（ボス）用だけ。プレイヤーが使う入口（skill1）は無い
execute unless score #skill_side temp matches 1 run return 0

# 当たった人に付ける破裂（damage_dealt が、ダメージの計算より前に func を呼ぶ）
data modify storage tm_rpg:damage func set value "tm_rpg:player/skill/wolf_thunder/hit_func"

# 範囲の中のプレイヤーに印（tag wolf_hit）を付ける
tag @a[tag=mob,gamemode=!spectator,distance=..1.5] add wolf_hit

# 印の付いた人に1回ずつ当てる（範囲が重なっても1回）。ノックバックを与える人（damage_dealt の damage ... by @e[tag=temp_victim]）は自分。当てたらすぐ外す
execute if entity @a[tag=wolf_hit,limit=1] run tag @s add temp_victim
execute as @a[tag=wolf_hit] at @s run function tm_rpg:system/damage_ex/damage_dealt
tag @a[tag=wolf_hit] remove wolf_hit
tag @s remove temp_victim

# 落ちる演出（空からの黄色い稲妻と、地面の黄色い爆発）
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_thunder/fx/cast
