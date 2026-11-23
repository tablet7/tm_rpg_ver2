#> test_weapon_motion:katana/impact/kesa

# 抜刀の1撃目（袈裟斬り）が当たる瞬間（36 コマ目）の演出。katana/attack/advance から呼ばれる
# 右上から左下へ、斬撃を出す（^ の左右は + が左）。最後に当たり判定（weapon_hit/front3）を呼ぶ
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^-0.9 ^0.7 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^0.9 ^-0.7 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^ ^3 0.5 0.5 0.5 0.3 12
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.3

# 当たり判定（刀武器の抜刀1撃目。倍率は weapon_rate/katana）
scoreboard players set #hit twm_tmp 1
function test_weapon_motion:weapon_rate/katana
function test_weapon_motion:weapon_hit/front3
