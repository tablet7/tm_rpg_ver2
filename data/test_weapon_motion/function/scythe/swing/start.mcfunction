#> test_weapon_motion:scythe/swing/start

# 構え（twm_sc 0）で右クリックしたときの処理。振り下ろしを始める。scythe/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_sc 1
scoreboard players set @s twm_sc_f 1
# 最初の右クリックからの tick 数（引き裂きの受付時間を数える）と、先に押された右クリック
scoreboard players set @s twm_sc_t 0
scoreboard players set @s twm_sc_q 0
function test_weapon_motion:scythe/set_frame
playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.6 0.6
