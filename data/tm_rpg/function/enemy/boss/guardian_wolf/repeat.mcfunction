#> tm_rpg:enemy/boss/guardian_wolf/repeat

# 同じ行動をもう一度だけくり返す（repeat_in_phase）。行動の最後のtickに呼ばれる
# @s ＝ マスター

scoreboard players set @s boss_t 0
scoreboard players set @s boss_rep 1
