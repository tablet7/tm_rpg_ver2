#> test_weapon_motion:dual_sword/impact/nagi

# 2撃目（左の低い薙ぎ）が当たる瞬間（9 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。dual_sword/attack/advance から呼ばれる
# 右から左へ、低く斬撃を出す（^ の左右は + が左）
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^-1.1 ^-0.6 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^-0.5 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^1.1 ^-0.6 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^-0.5 ^3 0.9 0.2 0.9 0.3 12
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.4

# 当たり判定（両手武器の2撃目。倍率は weapon_rate/two_hand）
scoreboard players set #hit twm_tmp 2
function test_weapon_motion:weapon_rate/two_hand
function test_weapon_motion:weapon_hit/front3
