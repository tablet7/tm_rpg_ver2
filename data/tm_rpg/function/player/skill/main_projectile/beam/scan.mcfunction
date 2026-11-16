#> tm_rpg:player/skill/main_projectile/beam/scan

# 太いレーザーの長さを、壁まで1マスずつ数えるくり返し。main_projectile/beam/init から呼ばれる
# 通れないブロック（#minecraft:replaceable でない）か、最大の長さ（#beam_max temp）で止まる
# @s ＝ レーザー（実行位置 ＝ 調べる場所。向き ＝ 撃つ向き）

execute unless block ~ ~ ~ #minecraft:replaceable run return 0
scoreboard players add @s beam_length 1
execute if score @s beam_length < #beam_max temp positioned ^ ^ ^1 run function tm_rpg:player/skill/main_projectile/beam/scan
