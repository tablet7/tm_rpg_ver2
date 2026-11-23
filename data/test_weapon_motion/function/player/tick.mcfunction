#> test_weapon_motion:player/tick

# 変形武器を手（メインハンドかオフハンド）に持っているプレイヤーの毎 tick の処理。test_weapon_motion:tick から呼ばれる
# @s ＝ プレイヤー（at @s）
# twm_state: 0 = 双剣、1 = 合体中、2 = 斧、3 = 振り下ろし中、4 = 分離中、5 = 分離の受け渡し

execute unless score @s twm_state matches 0.. run scoreboard players set @s twm_state 0

# 右クリック（歪んだキノコ付きの棒を使った）を #use に受け取る
scoreboard players set #use twm_tmp 0
execute if score @s twm_use matches 1.. run scoreboard players set #use twm_tmp 1
scoreboard players reset @s twm_use

execute if score @s twm_state matches 0 run return run function test_weapon_motion:player/dual/tick
execute if score @s twm_state matches 1 run return run function test_weapon_motion:player/merge/tick
execute if score @s twm_state matches 2 if score #use twm_tmp matches 1 run return run function test_weapon_motion:player/axe/use
execute if score @s twm_state matches 3 run return run function test_weapon_motion:player/swing/tick
execute if score @s twm_state matches 4 run return run function test_weapon_motion:player/split/tick
execute if score @s twm_state matches 5 run function test_weapon_motion:player/split/finish
