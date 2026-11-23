#> test_weapon_motion:player/axe/use

# 斧の形（twm_state 2）で右クリックしたときの処理。しゃがんでいれば分離、そうでなければ振り下ろす。player/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

execute if predicate test_weapon_motion:sneaking run return run function test_weapon_motion:player/split/start
function test_weapon_motion:player/swing/start
