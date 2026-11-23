#> test_weapon_motion:scythe/swing/tick

# 振り下ろし中（twm_sc 1）の毎 tick の処理。scythe/tick から呼ばれる
# 1〜12 コマ = 振り下ろし（4 = 振りかぶり、7 で当たる、12 = 振り下ろして奥へ）。12 コマのまま、引き裂きの右クリックを待つ
# 引き裂きの受付: 最初の右クリック（振り下ろしの開始）から 20 tick（1 秒）まで
# 振り下ろしの途中の右クリックは覚えておき、12 コマに着いた次の tick に引き裂く（12 コマに着くのは 11 tick 目）
# @s ＝ プレイヤー（at @s）

scoreboard players add @s twm_sc_t 1
# 受付時間を過ぎたか（#late）。受付時間を変えるときは、この行の数字（受付時間 + 1）だけを変える
scoreboard players set #late twm_tmp 0
execute if score @s twm_sc_t matches 21.. run scoreboard players set #late twm_tmp 1
execute if score #use twm_tmp matches 1 if score #late twm_tmp matches 0 run scoreboard players set @s twm_sc_q 1

# コマを進める前のコマで分ける（コマを進めた tick に引き裂きを始めないように）
scoreboard players operation #f twm_tmp = @s twm_sc_f
execute if score #f twm_tmp matches ..11 run function test_weapon_motion:scythe/swing/next
execute if score #f twm_tmp matches 12 if score @s twm_sc_q matches 1 run function test_weapon_motion:scythe/tear/start
execute if score #f twm_tmp matches 12 if score @s twm_sc matches 1 if score #late twm_tmp matches 1 run function test_weapon_motion:scythe/back/from_swing
