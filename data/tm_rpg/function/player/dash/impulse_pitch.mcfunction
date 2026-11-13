#> tm_rpg:player/dash/impulse_pitch

# impulse から execute summon marker で呼ばれ、プレイヤーのピッチの sin / cos（1000倍）を #dash_s / #dash_c に求める
# @s ＝ いま出した marker（プレイヤーの足元にいる）。実行の向きはプレイヤーの向き

execute store result score #dash_s temp run data get entity @s Pos[1] 1000
execute store result score #dash_c temp run data get entity @s Pos[2] 1000

# 横の向きを 0（南 = +Z）にして、プレイヤーと同じピッチで1ブロック前へ動かす
execute rotated 0 ~ run tp @s ^ ^ ^1

# Y の変化 = -sin、Z の変化 = cos
execute store result score #dash_t temp run data get entity @s Pos[1] 1000
scoreboard players operation #dash_s temp -= #dash_t temp
execute store result score #dash_t temp run data get entity @s Pos[2] 1000
scoreboard players operation #dash_t temp -= #dash_c temp
scoreboard players operation #dash_c temp = #dash_t temp

kill @s
