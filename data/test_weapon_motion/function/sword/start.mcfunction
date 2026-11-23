#> test_weapon_motion:sword/start

# 片手剣を持ち始めたときの処理（構えから始める）。sword/tick から呼ばれる
# 振っている途中で持ち替えたときなどは、途中のコマがアイテムに残っているので、0 コマに書き直す
# @s ＝ プレイヤー

tag @s add twm_sw_hold
scoreboard players set @s twm_sw 0
scoreboard players set @s twm_sw_f 0
scoreboard players set @s twm_sw_q 0
function test_weapon_motion:sword/set_frame
