#> tm_rpg:enemy/boss/crawler/choose

# 次の行動を抽選する。crawler/move/idle から呼ばれる
# @s ＝ マスター

scoreboard players set @s boss_t 0
execute store result score @s boss_move run random value 2..4
