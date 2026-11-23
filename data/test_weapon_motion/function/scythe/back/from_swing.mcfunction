#> test_weapon_motion:scythe/back/from_swing

# 振り下ろしたまま受付時間が過ぎたときの処理。構えに戻り始める（21 コマから）。scythe/swing/tick から呼ばれる
# @s ＝ プレイヤー

scoreboard players set @s twm_sc 4
scoreboard players set @s twm_sc_f 21
function test_weapon_motion:scythe/set_frame
