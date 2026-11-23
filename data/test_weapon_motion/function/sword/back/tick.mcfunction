#> test_weapon_motion:sword/back/tick

# 構えに戻る途中（twm_sw 3）の毎 tick の処理。右クリックは見ない。sword/tick から呼ばれる
# 33〜38・40〜45・47〜52・54〜61 コマ。39・46・53・62 コマは構え（0 コマ）と同じ姿勢なので、0 コマにして構えに戻す
# @s ＝ プレイヤー

scoreboard players add @s twm_sw_f 1
execute if score @s twm_sw_f matches 39 run scoreboard players set @s twm_sw_f 0
execute if score @s twm_sw_f matches 46 run scoreboard players set @s twm_sw_f 0
execute if score @s twm_sw_f matches 53 run scoreboard players set @s twm_sw_f 0
execute if score @s twm_sw_f matches 62 run scoreboard players set @s twm_sw_f 0
execute if score @s twm_sw_f matches 0 run scoreboard players set @s twm_sw 0
function test_weapon_motion:sword/set_frame
