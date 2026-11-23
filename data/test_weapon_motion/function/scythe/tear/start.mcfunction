#> test_weapon_motion:scythe/tear/start

# 振り下ろしたあと（12 コマ）に、受付時間内の右クリックがあったときの処理。引き裂きを始める。scythe/swing/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_sc 2
scoreboard players set @s twm_sc_f 13
scoreboard players set @s twm_sc_q 0
function test_weapon_motion:scythe/set_frame
playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.6 1.1
