#> test_weapon_motion:sword/back/start

# 構えに戻り始める。何撃目のあとかで、戻りの最初のコマを選ぶ（1撃目 33、2撃目 40、3撃目 47、4撃目 54）
# sword/attack/tick（4撃目のあと）・sword/wait/tick（受付時間が過ぎた）から呼ばれる
# @s ＝ プレイヤー

scoreboard players set @s twm_sw 3
scoreboard players set @s twm_sw_q 0
execute if score @s twm_sw_n matches 1 run scoreboard players set @s twm_sw_f 33
execute if score @s twm_sw_n matches 2 run scoreboard players set @s twm_sw_f 40
execute if score @s twm_sw_n matches 3 run scoreboard players set @s twm_sw_f 47
execute if score @s twm_sw_n matches 4 run scoreboard players set @s twm_sw_f 54
function test_weapon_motion:sword/set_frame
