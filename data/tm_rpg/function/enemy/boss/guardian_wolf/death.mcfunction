#> tm_rpg:enemy/boss/guardian_wolf/death

# 撃破（本体の hp が 0 以下になって消えた）。guardian_wolf/tick から呼ばれる
# @s ＝ マスター

# 残りの当たり判定を消し、倒れる動きに入る（最後に death_end）
kill @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.hb,distance=..48]
scoreboard players set @s boss_dead 1
scoreboard players set @s boss_move 7
scoreboard players set @s boss_t 0
