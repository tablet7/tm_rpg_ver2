#> tm_rpg:enemy/boss/guardian_wolf/phase/swap_2

# 形態 2 のモデルに差し替える合図。行動 roar の swap_t のtickに呼ばれる
# @s ＝ マスター

scoreboard players set @s boss_form 2
scoreboard players set #swap boss_tmp 2
