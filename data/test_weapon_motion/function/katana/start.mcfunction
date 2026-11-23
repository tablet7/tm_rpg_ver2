#> test_weapon_motion:katana/start

# 刀を持ち始めたときの処理。katana/tick から呼ばれる
# 抜刀状態は5撃目（納刀斬り）を打つまで続くので、持ち替えても前の構え（twm_kt_s）から始める（初めて持つときは納刀状態）
# 振っている途中で持ち替えたときなどは、途中のコマがアイテムに残っているので、構えのコマ（0・33）に書き直す
# @s ＝ プレイヤー

tag @s add twm_kt_hold
scoreboard players set @s twm_kt_n 0
scoreboard players set @s twm_kt_h 0
execute if score @s twm_kt_s matches 1 run return run function test_weapon_motion:katana/to_drawn
function test_weapon_motion:katana/to_sheathed
