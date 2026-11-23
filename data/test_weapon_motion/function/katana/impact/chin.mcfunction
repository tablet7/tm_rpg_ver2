#> test_weapon_motion:katana/impact/chin

# 刀を鞘に納め切った瞬間（70 コマ目）の鍔鳴り「チン」。katana/attack/advance から呼ばれる
# 呼んだ側で 2 tick のヒットストップ（twm_kt_h 2）を入れる
# @s ＝ プレイヤー（at @s）

playsound minecraft:block.note_block.bell player @a ~ ~ ~ 0.8 2
playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.25 2
playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.5 2
