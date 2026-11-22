#> tm_rpg:enemy/boss/guardian_wolf/hook/spot

# 雷を落とす場所を決める。hook/storm_bolt と hook/periodic_one から execute summon minecraft:marker run function で呼ばれる
# 出したばかりの marker を、中心（実行位置）から前後左右それぞれ ±#gw_range temp マス（3 か 5）のランダムな場所へ動かし、tag gw_spot を付ける
# 高さは変えない（中心の高さのまま）。範囲が決まっているので random value に直接書く（マクロは使わない）
# @s ＝ 出したばかりの marker

tag @s add gw_spot
# 座標は 100 倍のスコアで計算する（move/leap と同じ書き方）
execute store result score #gw_x temp run data get entity @s Pos[0] 100
execute store result score #gw_z temp run data get entity @s Pos[2] 100
execute if score #gw_range temp matches 5 store result score #gw_dx temp run random value -500..500
execute if score #gw_range temp matches 5 store result score #gw_dz temp run random value -500..500
execute if score #gw_range temp matches 3 store result score #gw_dx temp run random value -300..300
execute if score #gw_range temp matches 3 store result score #gw_dz temp run random value -300..300
scoreboard players operation #gw_x temp += #gw_dx temp
scoreboard players operation #gw_z temp += #gw_dz temp
execute store result entity @s Pos[0] double 0.01 run scoreboard players get #gw_x temp
execute store result entity @s Pos[2] double 0.01 run scoreboard players get #gw_z temp
