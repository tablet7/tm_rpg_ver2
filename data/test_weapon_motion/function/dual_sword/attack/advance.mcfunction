#> test_weapon_motion:dual_sword/attack/advance

# 技のコマを1つ進める。振る音（当たる 1 コマ前）と、当たる瞬間の演出を出す。dual_sword/attack/tick から呼ばれる
# 1撃目 2〜6 コマ（3 で当たる）、2撃目 8〜11（9）、3撃目 13〜16（15）、4撃目 18〜23（20）、5撃目 25〜29（26）、6撃目 31〜41（36）
# @s ＝ プレイヤー（at @s）

scoreboard players add @s twm_ds_f 1
function test_weapon_motion:dual_sword/set_frame

# 振る音
execute if score @s twm_ds_f matches 2 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.5
execute if score @s twm_ds_f matches 8 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.7
execute if score @s twm_ds_f matches 14 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.9
execute if score @s twm_ds_f matches 19 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.6
execute if score @s twm_ds_f matches 25 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.5 1.4
execute if score @s twm_ds_f matches 35 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.7 1.0

# 当たる瞬間
execute if score @s twm_ds_f matches 3 run function test_weapon_motion:dual_sword/impact/kesa
execute if score @s twm_ds_f matches 9 run function test_weapon_motion:dual_sword/impact/nagi
execute if score @s twm_ds_f matches 15 run function test_weapon_motion:dual_sword/impact/tsuki
execute if score @s twm_ds_f matches 20 run function test_weapon_motion:dual_sword/impact/kiriage
execute if score @s twm_ds_f matches 26 run function test_weapon_motion:dual_sword/impact/gyakukesa
execute if score @s twm_ds_f matches 36 run function test_weapon_motion:dual_sword/impact/kousa
