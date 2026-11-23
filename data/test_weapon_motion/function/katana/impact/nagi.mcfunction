#> test_weapon_motion:katana/impact/nagi

# 抜刀の2撃目（横薙ぎ）が当たる瞬間（42 コマ目）の演出。katana/attack/advance から呼ばれる
# 左から右へ、少し上がりながら斬撃を出す（^ の左右は + が左）。最後に当たり判定（weapon_hit/front3）を呼ぶ
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^1.1 ^-0.4 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^-0.2 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^-1.1 ^-0.05 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^-0.2 ^3 0.9 0.3 0.9 0.3 15
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.4

# 当たり判定（刀武器の抜刀2撃目。倍率は weapon_rate/katana）
scoreboard players set #hit twm_tmp 2
function test_weapon_motion:weapon_rate/katana
function test_weapon_motion:weapon_hit/front3
