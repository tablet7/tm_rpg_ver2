#> test_weapon_motion:scythe/back/from_tear

# 引き裂いたあとに止まり終わったときの処理。構えに戻り始める（31 コマから）。scythe/tear/after から呼ばれる
# @s ＝ プレイヤー

scoreboard players set @s twm_sc 4
scoreboard players set @s twm_sc_f 31
function test_weapon_motion:scythe/set_frame
