#> test_weapon_motion:katana/to_sheathed

# 納刀状態の構え（0 コマ）にする。持ち始め（katana/start）・納刀斬りの終わり（katana/attack/tick）・
# 納刀の技のあと構えに戻った所（katana/back/start・katana/back/tick）から呼ばれる
# @s ＝ プレイヤー

scoreboard players set @s twm_kt 0
scoreboard players set @s twm_kt_s 0
scoreboard players set @s twm_kt_f 0
scoreboard players set @s twm_kt_q 0
scoreboard players set @s twm_kt_t 0
function test_weapon_motion:katana/set_frame
