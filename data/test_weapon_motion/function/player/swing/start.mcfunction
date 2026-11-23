#> test_weapon_motion:player/swing/start

# 斧の振り下ろしを始める（20 コマ目 = 構え。19 コマ目と同じ姿勢）。player/axe/use から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_frame 20
function test_weapon_motion:player/set_frame
scoreboard players set @s twm_state 3
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 1 0.7
