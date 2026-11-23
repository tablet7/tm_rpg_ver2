#> tm_rpg:enemy/boss/guardian_wolf/to_idle

# 行動を終えて待機に戻る。各行動の最後のtickに呼ばれる
# @s ＝ マスター

scoreboard players set @s boss_t 0
scoreboard players set @s boss_move 1
scoreboard players set @s boss_rep 0
