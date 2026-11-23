#> test_weapon_motion:player/split/tick

# 分離中（twm_state 4）の毎 tick の処理。コマを 1 つ戻し、0 コマ目（双剣の姿勢）を見せた次の tick に、武器をオフハンドへ受け渡す。player/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

execute if score @s twm_frame matches ..0 run return run function test_weapon_motion:player/split/handoff
scoreboard players remove @s twm_frame 1
function test_weapon_motion:player/set_frame
