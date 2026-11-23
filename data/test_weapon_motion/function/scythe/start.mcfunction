#> test_weapon_motion:scythe/start

# 大鎌を持ち始めたときの処理（構えから始める）。scythe/tick から呼ばれる
# 振っている途中で持ち替えたときなどは、途中のコマがアイテムに残っているので、0 コマに書き直す
# @s ＝ プレイヤー

tag @s add twm_sc_hold
scoreboard players set @s twm_sc 0
scoreboard players set @s twm_sc_f 0
function test_weapon_motion:scythe/set_frame
