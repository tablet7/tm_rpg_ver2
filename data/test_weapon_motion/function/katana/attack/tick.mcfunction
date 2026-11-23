#> test_weapon_motion:katana/attack/tick

# 技の途中（twm_kt 1）の毎 tick の処理。katana/tick から呼ばれる
# 技の終わりのコマ（納刀 6・14・20・32、抜刀 39・45・51・61・73）に着くまで、1 tick に 1 コマ進める
# ヒットストップ（twm_kt_h が 1 以上）のあいだは、コマを進めずに止める（katana/attack/advance が当たる瞬間に入れる）
# 技の途中の右クリックは覚えておき（twm_kt_q）、終わりのコマに着いた次の tick に次の技を始める
# 居合一閃（32）のあとは抜刀状態の構え、納刀斬り（73）のあとは納刀状態の構えになる（右クリックを待たない）
# 納刀斬りのあとは 20 tick、次の技（納刀の1撃目）を始めない（twm_kt_c。katana/tick で数える）
# @s ＝ プレイヤー（at @s）

execute if score #use twm_tmp matches 1 run scoreboard players set @s twm_kt_q 1
execute if score @s twm_kt_h matches 1.. run return run scoreboard players remove @s twm_kt_h 1

# 今の技の終わりのコマにいるか（#end）
scoreboard players operation #f twm_tmp = @s twm_kt_f
scoreboard players set #end twm_tmp 0
execute if score #f twm_tmp matches 6 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 14 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 20 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 32 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 39 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 45 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 51 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 61 run scoreboard players set #end twm_tmp 1
execute if score #f twm_tmp matches 73 run scoreboard players set #end twm_tmp 1
execute if score #end twm_tmp matches 0 run return run function test_weapon_motion:katana/attack/advance

# 終わりのコマにいる: 居合一閃のあとは抜刀の構え、納刀斬りのあとは納刀の構え。ほかは右クリックが先に押されていれば次の技、無ければ待つ
execute if score #f twm_tmp matches 32 run return run function test_weapon_motion:katana/to_drawn
# 受付を止める tick 数を変えるときは、この行の数字（止める tick 数 + 1。この tick の終わりに katana/tick で 1 減るため）だけを変える
execute if score #f twm_tmp matches 73 run scoreboard players set @s twm_kt_c 21
execute if score #f twm_tmp matches 73 run return run function test_weapon_motion:katana/to_sheathed
execute if score @s twm_kt_q matches 1 run return run function test_weapon_motion:katana/attack/next
scoreboard players set @s twm_kt 2
scoreboard players set @s twm_kt_t 0
