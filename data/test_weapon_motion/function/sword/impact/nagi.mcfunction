#> test_weapon_motion:sword/impact/nagi

# 2撃目（返しの横薙ぎ）が当たる瞬間（9 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。sword/attack/advance から呼ばれる
# 左下から右へ、少し上がりながら斬撃を出す（^ の左右は + が左）
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^1.1 ^-0.6 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^-0.25 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^-1.1 ^0.1 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^-0.2 ^3 0.9 0.3 0.9 0.3 15
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.3

# 当たり判定（片手武器の2撃目。倍率は weapon_rate/one_hand）
scoreboard players set #hit twm_tmp 2
function test_weapon_motion:weapon_rate/one_hand
function test_weapon_motion:weapon_hit/front3
