#> test_weapon_motion:sword/attack/tick

# 技の途中（twm_sw 1）の毎 tick の処理。sword/tick から呼ばれる
# 技の終わりのコマ（6・12・20・32。振り終わりで 2 tick 止まったあと）に着くまで、1 tick に 1 コマ進める
# 技の途中の右クリックは覚えておき（twm_sw_q）、終わりのコマに着いた次の tick に次の技を始める（止まる tick を足さずにつながる）
# 4撃目のあとは右クリックを待たずに構えに戻る
# @s ＝ プレイヤー（at @s）

execute if score #use twm_tmp matches 1 run scoreboard players set @s twm_sw_q 1

# 今の技の終わりのコマにいるか（#end）
scoreboard players operation #f twm_tmp = @s twm_sw_f
scoreboard players set #end twm_tmp 0
execute if score #f twm_tmp matches 6 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 12 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 20 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 32 run scoreboard players set #end twm_tmp 1
execute if score #end twm_tmp matches 0 run return run function test_weapon_motion:sword/attack/advance

# 終わりのコマにいる: 4撃目なら構えに戻る、右クリックが先に押されていれば次の技、無ければ待つ（コマは変わらないので set_frame しない）
execute if score @s twm_sw_n matches 4.. run return run function test_weapon_motion:sword/back/start
execute if score @s twm_sw_q matches 1 run return run function test_weapon_motion:sword/attack/next
scoreboard players set @s twm_sw 2
scoreboard players set @s twm_sw_t 0
