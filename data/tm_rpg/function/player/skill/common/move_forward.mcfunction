#> tm_rpg:player/skill/common/move_forward

# @s を、実行時の向きに #move temp（0.1 マス単位。0〜255 ＝ 0〜25.5 マス）だけまっすぐ動かす関数（共通）
# マクロを使わずに好きな距離を動かせるように、12.8 / 6.4 / 3.2 / 1.6 / 0.8 / 0.4 / 0.2 / 0.1 マスの tp を大きい順に組み合わせる
# 255 より大きい値は 25.5 マスで止まる（もっと動かしたいときは 25.6 の行を上に足す）
# 向きは実行時の向きを使う（positioned as @s で位置だけ @s に合わせる）。rotated で向きを変えて呼べば、横・上・下にも動かせる
#   例: execute rotated ~90 0 run function tm_rpg:player/skill/common/move_forward（右へ）/ execute rotated ~ -90 run ...（上へ）
# 呼ぶ前に #move temp に距離を入れる（この関数の中で書き換わる）。tp は @s の向きを変えない
# @s ＝ 動かすエンティティ

execute if score #move temp matches 128.. positioned as @s run tp @s ^ ^ ^12.8
execute if score #move temp matches 128.. run scoreboard players remove #move temp 128
execute if score #move temp matches 64.. positioned as @s run tp @s ^ ^ ^6.4
execute if score #move temp matches 64.. run scoreboard players remove #move temp 64
execute if score #move temp matches 32.. positioned as @s run tp @s ^ ^ ^3.2
execute if score #move temp matches 32.. run scoreboard players remove #move temp 32
execute if score #move temp matches 16.. positioned as @s run tp @s ^ ^ ^1.6
execute if score #move temp matches 16.. run scoreboard players remove #move temp 16
execute if score #move temp matches 8.. positioned as @s run tp @s ^ ^ ^0.8
execute if score #move temp matches 8.. run scoreboard players remove #move temp 8
execute if score #move temp matches 4.. positioned as @s run tp @s ^ ^ ^0.4
execute if score #move temp matches 4.. run scoreboard players remove #move temp 4
execute if score #move temp matches 2.. positioned as @s run tp @s ^ ^ ^0.2
execute if score #move temp matches 2.. run scoreboard players remove #move temp 2
execute if score #move temp matches 1.. positioned as @s run tp @s ^ ^ ^0.1
