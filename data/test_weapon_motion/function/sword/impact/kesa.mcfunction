#> test_weapon_motion:sword/impact/kesa

# 1撃目（袈裟斬り）が当たる瞬間（3 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。sword/attack/advance から呼ばれる
# 右上から左下へ、目の前 2.5〜3 マスに斬撃を出す（^ の左右は + が左）
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^-0.9 ^0.7 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^0.9 ^-0.7 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^ ^3 0.5 0.5 0.5 0.3 15
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.1

# 当たり判定（片手武器の1撃目。倍率は weapon_rate/one_hand）
scoreboard players set #hit twm_tmp 1
function test_weapon_motion:weapon_rate/one_hand
function test_weapon_motion:weapon_hit/front3
