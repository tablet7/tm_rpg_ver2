#> test_weapon_motion:scythe/back/tick

# 構えに戻る途中（twm_sc 4）の毎 tick の処理。右クリックは見ない。scythe/tick から呼ばれる
# 21〜29 コマ（振り下ろしたあとから）・31〜39 コマ（引き裂いたあとから）。30・40 コマは構え（0 コマ）と同じ姿勢なので、0 コマにして構えに戻す
# @s ＝ プレイヤー

scoreboard players add @s twm_sc_f 1
execute if score @s twm_sc_f matches 30 run scoreboard players set @s twm_sc_f 0
execute if score @s twm_sc_f matches 40 run scoreboard players set @s twm_sc_f 0
execute if score @s twm_sc_f matches 0 run scoreboard players set @s twm_sc 0
function test_weapon_motion:scythe/set_frame
