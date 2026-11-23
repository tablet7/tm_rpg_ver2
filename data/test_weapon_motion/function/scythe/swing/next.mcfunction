#> test_weapon_motion:scythe/swing/next

# 振り下ろしのコマを1つ進める（2〜12 コマ）。7 コマ目で当たる。scythe/swing/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players add @s twm_sc_f 1
function test_weapon_motion:scythe/set_frame
execute if score @s twm_sc_f matches 7 run function test_weapon_motion:scythe/swing/impact
