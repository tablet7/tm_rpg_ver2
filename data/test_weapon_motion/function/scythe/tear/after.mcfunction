#> test_weapon_motion:scythe/tear/after

# 引き裂いたあと（twm_sc 3）の毎 tick の処理。20 コマのまま 5 tick 止まってから、構えに戻る。scythe/tick から呼ばれる
# @s ＝ プレイヤー

scoreboard players add @s twm_sc_t 1
execute if score @s twm_sc_t matches 5.. run function test_weapon_motion:scythe/back/from_tear
