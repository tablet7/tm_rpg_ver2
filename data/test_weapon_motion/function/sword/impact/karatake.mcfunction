#> test_weapon_motion:sword/impact/karatake

# 4撃目（両手の唐竹割り）が当たる瞬間（27 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。sword/attack/advance から呼ばれる
# 真上から真下へ斬撃を出し、3 マス先の足もとに土ぼこりを立てる
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^ ^0.9 ^2.6 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^-0.9 ^2.6 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^ ^3 0.2 0.9 0.2 0.3 25
# 足もと: 見下ろしていても地面の高さになるように、上下の向きを 0 にしてから 3 マス前へ
execute rotated ~ 0 positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.1 ~ 0.6 0 0.6 0.05 15
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.7
playsound minecraft:item.mace.smash_ground player @a ~ ~ ~ 0.8 1

# 当たり判定（片手武器の4撃目。倍率は weapon_rate/one_hand）
scoreboard players set #hit twm_tmp 4
function test_weapon_motion:weapon_rate/one_hand
function test_weapon_motion:weapon_hit/front3
