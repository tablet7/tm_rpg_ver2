#> test_weapon_motion:sword/attack/next

# 次の技（2〜4撃目）を始める。今の技の終わりのコマ（6・12・20）の次のコマが、次の技の最初のコマ（7・13・21）
# sword/attack/tick（技の途中に右クリックが押されていた）・sword/wait/tick（待っているあいだに右クリック）から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_sw 1
scoreboard players add @s twm_sw_n 1
scoreboard players add @s twm_sw_f 1
scoreboard players set @s twm_sw_q 0
function test_weapon_motion:sword/set_frame
