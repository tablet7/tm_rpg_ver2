#> test_weapon_motion:dual_sword/back/start

# 構えに戻り始める。何撃目のあとかで、戻りの最初のコマを選ぶ（1撃目 42、2撃目 49、3撃目 56、4撃目 63、5撃目 71、6撃目 79）
# dual_sword/attack/tick（6撃目のあと）・dual_sword/wait/tick（受付時間が過ぎた）から呼ばれる
# @s ＝ プレイヤー

scoreboard players set @s twm_ds 3
scoreboard players set @s twm_ds_q 0
execute if score @s twm_ds_n matches 1 run scoreboard players set @s twm_ds_f 42
execute if score @s twm_ds_n matches 2 run scoreboard players set @s twm_ds_f 49
execute if score @s twm_ds_n matches 3 run scoreboard players set @s twm_ds_f 56
execute if score @s twm_ds_n matches 4 run scoreboard players set @s twm_ds_f 63
execute if score @s twm_ds_n matches 5 run scoreboard players set @s twm_ds_f 71
execute if score @s twm_ds_n matches 6 run scoreboard players set @s twm_ds_f 79
function test_weapon_motion:dual_sword/set_frame
