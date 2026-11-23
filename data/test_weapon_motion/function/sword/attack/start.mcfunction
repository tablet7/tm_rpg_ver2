#> test_weapon_motion:sword/attack/start

# 構え（twm_sw 0）で右クリックしたときの処理。1撃目（袈裟斬り）を始める。sword/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_sw 1
scoreboard players set @s twm_sw_n 1
scoreboard players set @s twm_sw_f 1
scoreboard players set @s twm_sw_q 0
function test_weapon_motion:sword/set_frame
