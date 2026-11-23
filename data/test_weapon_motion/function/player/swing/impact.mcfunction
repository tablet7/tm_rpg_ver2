#> test_weapon_motion:player/swing/impact

# 振り下ろした斧が当たる瞬間（29 コマ目）の演出。見た目のテスト用なので、ダメージは与えない。player/swing/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

# 前方 2.5 マスの足元（上下の向きは見ない）
execute rotated ~ 0 positioned ^ ^ ^2.5 run particle minecraft:sweep_attack ~ ~0.4 ~ 0.3 0.1 0.3 0 3
execute rotated ~ 0 positioned ^ ^ ^2.5 run particle minecraft:crit ~ ~0.2 ~ 0.6 0.1 0.6 0.4 25
execute rotated ~ 0 positioned ^ ^ ^2.5 run particle minecraft:explosion ~ ~0.2 ~ 0 0 0 0 1
playsound minecraft:item.mace.smash_ground player @a ~ ~ ~ 1 0.9
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.8 0.7
