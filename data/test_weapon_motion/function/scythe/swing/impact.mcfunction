#> test_weapon_motion:scythe/swing/impact

# 振り下ろした大鎌が当たる瞬間（7 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。scythe/swing/next から呼ばれる
# 右上から左下へ、目の前 2.5〜3 マスに斬撃を出す（^ の左右は + が左）
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^-0.9 ^0.7 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^0.9 ^-0.7 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^ ^3 0.6 0.6 0.6 0.3 20
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.6
playsound minecraft:item.trident.hit player @a ~ ~ ~ 0.6 0.8

# 当たり判定（大型武器の1撃目。倍率は weapon_rate/large）
scoreboard players set #hit twm_tmp 1
function test_weapon_motion:weapon_rate/large
function test_weapon_motion:weapon_hit/front3
