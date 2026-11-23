#> test_weapon_motion:dual_sword/attack/start

# 構え（twm_ds 0）で右クリックしたときの処理。1撃目（左の袈裟斬り）を始める。dual_sword/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_ds 1
scoreboard players set @s twm_ds_n 1
scoreboard players set @s twm_ds_f 1
scoreboard players set @s twm_ds_q 0
function test_weapon_motion:dual_sword/set_frame
