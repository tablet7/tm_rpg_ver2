#> test_weapon_motion:dual_sword/attack/next

# 次の技（2〜6撃目）を始める。今の技の終わりのコマ（6・11・16・23・29）の次のコマが、次の技の最初のコマ（7・12・17・24・30）
# dual_sword/attack/tick（技の途中に右クリックが押されていた）・dual_sword/wait/tick（待っているあいだに右クリック）から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_ds 1
scoreboard players add @s twm_ds_n 1
scoreboard players add @s twm_ds_f 1
scoreboard players set @s twm_ds_q 0
function test_weapon_motion:dual_sword/set_frame
