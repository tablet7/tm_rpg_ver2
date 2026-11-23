#> test_weapon_motion:katana/back/tick

# 構えに戻る途中（twm_kt 3）の毎 tick の処理。右クリックは見ない。katana/tick から呼ばれる
# 77〜82・84〜89 コマ（83・90 は納刀の構えと同じ姿勢）→ 納刀の構え。
# 91〜96・98〜103・105〜110・112〜118 コマ（97・104・111・119 は抜刀の構えと同じ姿勢）→ 抜刀の構え
# @s ＝ プレイヤー

scoreboard players add @s twm_kt_f 1
execute if score @s twm_kt_f matches 83 run return run function test_weapon_motion:katana/to_sheathed
execute if score @s twm_kt_f matches 90 run return run function test_weapon_motion:katana/to_sheathed
execute if score @s twm_kt_f matches 97 run return run function test_weapon_motion:katana/to_drawn
execute if score @s twm_kt_f matches 104 run return run function test_weapon_motion:katana/to_drawn
execute if score @s twm_kt_f matches 111 run return run function test_weapon_motion:katana/to_drawn
execute if score @s twm_kt_f matches 119 run return run function test_weapon_motion:katana/to_drawn
function test_weapon_motion:katana/set_frame
