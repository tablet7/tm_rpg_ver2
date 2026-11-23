#> tm_rpg:enemy/boss/guardian_wolf/move/leap_leap

# 行動 leap の飛び掛かりの1tick。位置をスコアで計算して Pos に書く（マクロなし）。move/leap から呼ばれる
# @s ＝ マスター。n ＝ 飛んでからのtick数、N ＝ 飛ぶtick数（20）
# 横 ＝ 始点 + 差 × n / N、高さ ＝ 始点 + 差 × n / N + 4 × 高さ × n × (N - n) / N²

scoreboard players operation #n boss_tmp = @s boss_t
scoreboard players remove #n boss_tmp 15
scoreboard players set #N boss_tmp 20
scoreboard players operation #v boss_tmp = @s boss_ldx
scoreboard players operation #v boss_tmp *= #n boss_tmp
scoreboard players operation #v boss_tmp /= #N boss_tmp
scoreboard players operation #v boss_tmp += @s boss_lx
execute store result entity @s Pos[0] double 0.01 run scoreboard players get #v boss_tmp
scoreboard players operation #v boss_tmp = @s boss_ldy
scoreboard players operation #v boss_tmp *= #n boss_tmp
scoreboard players operation #v boss_tmp /= #N boss_tmp
scoreboard players operation #v boss_tmp += @s boss_ly
scoreboard players operation #a boss_tmp = #N boss_tmp
scoreboard players operation #a boss_tmp -= #n boss_tmp
scoreboard players operation #a boss_tmp *= #n boss_tmp
scoreboard players set #c boss_tmp 3200
scoreboard players operation #a boss_tmp *= #c boss_tmp
scoreboard players set #c boss_tmp 400
scoreboard players operation #a boss_tmp /= #c boss_tmp
scoreboard players operation #v boss_tmp += #a boss_tmp
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #v boss_tmp
scoreboard players operation #v boss_tmp = @s boss_ldz
scoreboard players operation #v boss_tmp *= #n boss_tmp
scoreboard players operation #v boss_tmp /= #N boss_tmp
scoreboard players operation #v boss_tmp += @s boss_lz
execute store result entity @s Pos[2] double 0.01 run scoreboard players get #v boss_tmp
