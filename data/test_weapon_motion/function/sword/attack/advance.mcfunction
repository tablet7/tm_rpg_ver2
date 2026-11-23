#> test_weapon_motion:sword/attack/advance

# 技のコマを1つ進める。振る音（当たる 1 コマ前）と、当たる瞬間の演出を出す。sword/attack/tick から呼ばれる
# 1撃目 2〜6 コマ（3 で当たる）、2撃目 8〜12（9）、3撃目 14〜20（18）、4撃目 22〜32（27）
# @s ＝ プレイヤー（at @s）

scoreboard players add @s twm_sw_f 1
function test_weapon_motion:sword/set_frame

# 振る音
execute if score @s twm_sw_f matches 2 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.4
execute if score @s twm_sw_f matches 8 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.6
execute if score @s twm_sw_f matches 17 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.8
execute if score @s twm_sw_f matches 26 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.7 0.9

# 当たる瞬間
execute if score @s twm_sw_f matches 3 run function test_weapon_motion:sword/impact/kesa
execute if score @s twm_sw_f matches 9 run function test_weapon_motion:sword/impact/nagi
execute if score @s twm_sw_f matches 18 run function test_weapon_motion:sword/impact/tsuki
execute if score @s twm_sw_f matches 27 run function test_weapon_motion:sword/impact/karatake
