#> test_weapon_motion:dual_sword/attack/tick

# 技の途中（twm_ds 1）の毎 tick の処理。dual_sword/tick から呼ばれる
# 技の終わりのコマ（6・11・16・23・29・41。振り終わりで止まったあと）に着くまで、1 tick に 1 コマ進める
# 技の途中の右クリックは覚えておき（twm_ds_q）、終わりのコマに着いた次の tick に次の技を始める（止まる tick を足さずにつながる）
# 6撃目のあとは右クリックを待たずに構えに戻る
# @s ＝ プレイヤー（at @s）

execute if score #use twm_tmp matches 1 run scoreboard players set @s twm_ds_q 1

# 今の技の終わりのコマにいるか（#end）
scoreboard players operation #f twm_tmp = @s twm_ds_f
scoreboard players set #end twm_tmp 0
execute if score #f twm_tmp matches 6 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 11 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 16 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 23 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 29 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 41 run scoreboard players set #end twm_tmp 1
execute if score #end twm_tmp matches 0 run return run function test_weapon_motion:dual_sword/attack/advance

# 終わりのコマにいる: 6撃目なら構えに戻る、右クリックが先に押されていれば次の技、無ければ待つ（コマは変わらないので set_frame しない）
execute if score @s twm_ds_n matches 6.. run return run function test_weapon_motion:dual_sword/back/start
execute if score @s twm_ds_q matches 1 run return run function test_weapon_motion:dual_sword/attack/next
scoreboard players set @s twm_ds 2
scoreboard players set @s twm_ds_t 0
