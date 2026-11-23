#> test_weapon_motion:katana/attack/start

# 構え（twm_kt 0）で右クリックしたときの処理。納刀状態なら鞘払い（1 コマ）、抜刀状態なら袈裟斬り（34 コマ）を始める。katana/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_kt 1
scoreboard players set @s twm_kt_n 1
scoreboard players set @s twm_kt_q 0
scoreboard players set @s twm_kt_h 0
execute if score @s twm_kt_s matches 0 run scoreboard players set @s twm_kt_f 1
execute if score @s twm_kt_s matches 1 run scoreboard players set @s twm_kt_f 34
function test_weapon_motion:katana/set_frame
playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.4 1.6
