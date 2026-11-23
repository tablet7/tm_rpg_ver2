#> test_weapon_motion:player/swing/tick

# 振り下ろし中（twm_state 3）の毎 tick の処理。player/tick から呼ばれる
# 20〜26 コマ = 振り上げ、26〜29 = 振り下ろし（29 で当たる）、29〜33 = 振り抜いたまま、33〜41 = 構えに戻る
# 41 コマ目は 19 コマ目と同じ姿勢なので、コマはそのままで斧の形（twm_state 2）に戻す
# @s ＝ プレイヤー（at @s）

scoreboard players add @s twm_frame 1
function test_weapon_motion:player/set_frame
execute if score @s twm_frame matches 29 run function test_weapon_motion:player/swing/impact
execute if score @s twm_frame matches 41.. run scoreboard players set @s twm_state 2
