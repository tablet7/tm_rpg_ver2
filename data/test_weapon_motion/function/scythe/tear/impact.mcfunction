#> test_weapon_motion:scythe/tear/impact

# 引き裂いた大鎌が当たる瞬間（18 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。scythe/tear/tick から呼ばれる
# 左から右へ、目の前の少し下を横に引き裂く（^ の左右は + が左）
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^1.3 ^-0.4 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^-0.4 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^-1.3 ^-0.4 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^-0.4 ^3 1.2 0.2 1.2 0.4 30
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 0.8 0.8

# 当たり判定（大型武器の2撃目。倍率は weapon_rate/large）
scoreboard players set #hit twm_tmp 2
function test_weapon_motion:weapon_rate/large
function test_weapon_motion:weapon_hit/front3
