#> test_weapon_motion:dual_sword/start

# 二刀流を持ち始めたときの処理（構えから始める）。dual_sword/tick から呼ばれる
# 振っている途中で持ち替えたときなどは、途中のコマがアイテムに残っているので、0 コマに書き直す
# @s ＝ プレイヤー

tag @s add twm_ds_hold
scoreboard players set @s twm_ds 0
scoreboard players set @s twm_ds_f 0
scoreboard players set @s twm_ds_q 0
function test_weapon_motion:dual_sword/set_frame
