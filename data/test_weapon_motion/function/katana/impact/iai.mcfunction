#> test_weapon_motion:katana/impact/iai

# 居合一閃が当たる瞬間（26 コマ目。このあと 2 tick 止める）の演出。katana/attack/advance から呼ばれる
# 左から右へ、横一文字の斬撃を出す（^ の左右は + が左）。最後に当たり判定（weapon_hit/front3）を呼ぶ
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^1.4 ^ ^2.7 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^-1.4 ^ ^2.7 0 0 0 0 1
execute anchored eyes run particle minecraft:end_rod ^ ^ ^3 1.2 0.03 0.3 0.01 15
execute anchored eyes run particle minecraft:crit ^ ^ ^3 1.2 0.2 0.5 0.4 25
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.0
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1.1

# 当たり判定（刀武器の納刀4撃目。倍率は weapon_rate/katana）
scoreboard players set #hit twm_tmp 4
function test_weapon_motion:weapon_rate/katana
function test_weapon_motion:weapon_hit/front3
