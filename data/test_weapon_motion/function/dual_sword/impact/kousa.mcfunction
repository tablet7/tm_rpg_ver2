#> test_weapon_motion:dual_sword/impact/kousa

# 6撃目（交差斬り）が当たる瞬間（36 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。dual_sword/attack/advance から呼ばれる
# 目の前に × の字の斬撃（左上 → 右下と、右上 → 左下）を出す（^ の左右は + が左）
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^1.0 ^0.8 ^2.6 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^-1.0 ^-0.8 ^2.6 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^-1.0 ^0.8 ^2.6 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^1.0 ^-0.8 ^2.6 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^ ^3 0.7 0.7 0.7 0.4 30
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.9
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.8

# 当たり判定（両手武器の6撃目。倍率は weapon_rate/two_hand）
scoreboard players set #hit twm_tmp 6
function test_weapon_motion:weapon_rate/two_hand
function test_weapon_motion:weapon_hit/front3
