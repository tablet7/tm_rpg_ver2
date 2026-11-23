#> test_weapon_motion:katana/to_drawn

# 抜刀状態の構え（33 コマ）にする。居合一閃の終わり（katana/attack/tick）・抜刀の技のあと構えに戻った所（katana/back/tick）・
# 抜刀状態で持ち直した所（katana/start）から呼ばれる
# @s ＝ プレイヤー

scoreboard players set @s twm_kt 0
scoreboard players set @s twm_kt_s 1
scoreboard players set @s twm_kt_f 33
scoreboard players set @s twm_kt_q 0
scoreboard players set @s twm_kt_t 0
function test_weapon_motion:katana/set_frame
