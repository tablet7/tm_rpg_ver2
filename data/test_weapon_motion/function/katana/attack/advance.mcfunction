#> test_weapon_motion:katana/attack/advance

# 技のコマを1つ進める。振る音（当たる 1 コマ前）・当たる瞬間の演出・ヒットストップ（twm_kt_h）を出す。katana/attack/tick から呼ばれる
# 当たるコマ: 納刀 3・12・17・26（居合）、抜刀 36・42・49・57、70（納刀斬りの鍔鳴り）・71（遅れ斬撃）
# @s ＝ プレイヤー（at @s）

scoreboard players add @s twm_kt_f 1
function test_weapon_motion:katana/set_frame

# 振る音・刀の音
execute if score @s twm_kt_f matches 11 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.6 1.1
execute if score @s twm_kt_f matches 16 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.5
execute if score @s twm_kt_f matches 21 run function test_weapon_motion:katana/impact/koiguchi
execute if score @s twm_kt_f matches 25 run playsound minecraft:item.trident.return player @a ~ ~ ~ 0.8 1.8
execute if score @s twm_kt_f matches 25 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.8 1.9
execute if score @s twm_kt_f matches 35 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.6
execute if score @s twm_kt_f matches 41 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.8
execute if score @s twm_kt_f matches 48 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.9
execute if score @s twm_kt_f matches 56 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.7 1.2
execute if score @s twm_kt_f matches 63 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.4
execute if score @s twm_kt_f matches 68 run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 0.7 1.6

# 当たる瞬間（居合と鍔鳴りは 2 tick 止める）
execute if score @s twm_kt_f matches 3 run function test_weapon_motion:katana/impact/saya_harai
execute if score @s twm_kt_f matches 12 run function test_weapon_motion:katana/impact/saya_uchi
execute if score @s twm_kt_f matches 17 run function test_weapon_motion:katana/impact/kojiri
execute if score @s twm_kt_f matches 26 run function test_weapon_motion:katana/impact/iai
execute if score @s twm_kt_f matches 26 run scoreboard players set @s twm_kt_h 2
execute if score @s twm_kt_f matches 36 run function test_weapon_motion:katana/impact/kesa
execute if score @s twm_kt_f matches 42 run function test_weapon_motion:katana/impact/nagi
execute if score @s twm_kt_f matches 49 run function test_weapon_motion:katana/impact/tsuki
execute if score @s twm_kt_f matches 57 run function test_weapon_motion:katana/impact/karatake
execute if score @s twm_kt_f matches 70 run function test_weapon_motion:katana/impact/chin
execute if score @s twm_kt_f matches 70 run scoreboard players set @s twm_kt_h 2
execute if score @s twm_kt_f matches 71 run function test_weapon_motion:katana/impact/okure
