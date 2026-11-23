#> test_weapon_motion:dual_sword/impact/tsuki

# 3撃目（右の突き）が当たる瞬間（15 コマ目）の演出。最後に当たり判定（weapon_hit/front3）を呼ぶ。dual_sword/attack/advance から呼ばれる
# 画面の真ん中（視線の先）へ、まっすぐ線を出す
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:crit ^ ^ ^1.5 0 0 0 0 2
execute anchored eyes run particle minecraft:crit ^ ^ ^2.2 0 0 0 0 2
execute anchored eyes run particle minecraft:crit ^ ^ ^2.9 0 0 0 0 2
execute anchored eyes run particle minecraft:crit ^ ^ ^3.6 0 0 0 0 2
execute anchored eyes run particle minecraft:enchanted_hit ^ ^ ^3.6 0.15 0.15 0.15 0.2 12
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1.3
playsound minecraft:item.trident.hit player @a ~ ~ ~ 0.7 1.5

# 当たり判定（両手武器の3撃目。倍率は weapon_rate/two_hand）
scoreboard players set #hit twm_tmp 3
function test_weapon_motion:weapon_rate/two_hand
function test_weapon_motion:weapon_hit/front3
