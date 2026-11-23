#> test_weapon_motion:katana/back/start

# 構えに戻り始める。構えと何撃目のあとかで、戻りの最初のコマを選ぶ（納刀 1撃目 77・2撃目 84、抜刀 1撃目 91・2撃目 98・3撃目 105・4撃目 112）
# 納刀の3撃目（鐺突き）は納刀の構えと同じ姿勢で終わるので、そのまま構えにする。katana/wait/tick（受付時間が過ぎた）から呼ばれる
# @s ＝ プレイヤー

execute if score @s twm_kt_s matches 0 if score @s twm_kt_n matches 3 run return run function test_weapon_motion:katana/to_sheathed
scoreboard players set @s twm_kt 3
scoreboard players set @s twm_kt_q 0
execute if score @s twm_kt_s matches 0 if score @s twm_kt_n matches 1 run scoreboard players set @s twm_kt_f 77
execute if score @s twm_kt_s matches 0 if score @s twm_kt_n matches 2 run scoreboard players set @s twm_kt_f 84
execute if score @s twm_kt_s matches 1 if score @s twm_kt_n matches 1 run scoreboard players set @s twm_kt_f 91
execute if score @s twm_kt_s matches 1 if score @s twm_kt_n matches 2 run scoreboard players set @s twm_kt_f 98
execute if score @s twm_kt_s matches 1 if score @s twm_kt_n matches 3 run scoreboard players set @s twm_kt_f 105
execute if score @s twm_kt_s matches 1 if score @s twm_kt_n matches 4 run scoreboard players set @s twm_kt_f 112
function test_weapon_motion:katana/set_frame
