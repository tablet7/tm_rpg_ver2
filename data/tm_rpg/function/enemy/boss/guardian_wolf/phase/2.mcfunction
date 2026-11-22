#> tm_rpg:enemy/boss/guardian_wolf/phase/2

# 形態 2 に入る。guardian_wolf/tick から呼ばれる
# @s ＝ マスター

scoreboard players set @s boss_phase 2
# 次に必ず roar を出す（今の行動が終わってから。待機中ならすぐ）
scoreboard players set @s boss_force 6
