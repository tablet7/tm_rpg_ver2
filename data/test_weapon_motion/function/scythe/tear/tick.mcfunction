#> test_weapon_motion:scythe/tear/tick

# 引き裂き中（twm_sc 2）の毎 tick の処理。scythe/tick から呼ばれる
# 13〜20 コマ = 右手だけで引き裂く。13〜15 = 刃を右へ水平に向けながら左へ少し引く、15〜16 = 止まる、17〜20 = 右へ一気に振り切る（18 で当たる、20 = 引き裂いたあと）
# 右クリックは見ない
# @s ＝ プレイヤー（at @s）

scoreboard players add @s twm_sc_f 1
function test_weapon_motion:scythe/set_frame
execute if score @s twm_sc_f matches 18 run function test_weapon_motion:scythe/tear/impact
execute if score @s twm_sc_f matches 20.. run scoreboard players set @s twm_sc_t 0
execute if score @s twm_sc_f matches 20.. run scoreboard players set @s twm_sc 3
