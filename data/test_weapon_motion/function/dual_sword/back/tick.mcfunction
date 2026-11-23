#> test_weapon_motion:dual_sword/back/tick

# 構えに戻る途中（twm_ds 3）の毎 tick の処理。右クリックは見ない。dual_sword/tick から呼ばれる
# 42〜47・49〜54・56〜61・63〜69・71〜77・79〜86 コマ。48・55・62・70・78・87 コマは構え（0 コマ）と同じ姿勢なので、0 コマにして構えに戻す
# @s ＝ プレイヤー

scoreboard players add @s twm_ds_f 1
execute if score @s twm_ds_f matches 48 run scoreboard players set @s twm_ds_f 0
execute if score @s twm_ds_f matches 55 run scoreboard players set @s twm_ds_f 0
execute if score @s twm_ds_f matches 62 run scoreboard players set @s twm_ds_f 0
execute if score @s twm_ds_f matches 70 run scoreboard players set @s twm_ds_f 0
execute if score @s twm_ds_f matches 78 run scoreboard players set @s twm_ds_f 0
execute if score @s twm_ds_f matches 87 run scoreboard players set @s twm_ds_f 0
execute if score @s twm_ds_f matches 0 run scoreboard players set @s twm_ds 0
function test_weapon_motion:dual_sword/set_frame
