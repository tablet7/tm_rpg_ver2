#> test_weapon_motion:dual_sword/impact/gyakukesa

# 5撃目（右の逆袈裟）が当たる瞬間（26 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。dual_sword/attack/advance から呼ばれる
# 右下から左上へ斬撃を出す（^ の左右は + が左）
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^-0.9 ^-0.7 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^0.9 ^0.7 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^ ^3 0.5 0.5 0.5 0.3 12
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.1

# 当たり判定（両手武器の5撃目。倍率は weapon_rate/two_hand）
scoreboard players set #hit twm_tmp 5
function test_weapon_motion:weapon_rate/two_hand
function test_weapon_motion:weapon_hit/front3
