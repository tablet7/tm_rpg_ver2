#> test_weapon_motion:katana/impact/kojiri

# 納刀の3撃目（鐺突き）が当たる瞬間（17 コマ目）の演出。katana/attack/advance から呼ばれる
# 画面の真ん中（視線の先）を鐺で突く。最後に当たり判定（weapon_hit/front3）を呼ぶ
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:crit ^ ^ ^2.2 0 0 0 0 2
execute anchored eyes run particle minecraft:crit ^ ^ ^2.8 0.1 0.1 0.1 0.2 8
execute anchored eyes run particle minecraft:poof ^ ^ ^2.8 0.05 0.05 0.05 0.02 4
playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 1 1.2
playsound minecraft:block.wood.hit player @a ~ ~ ~ 1 1.2

# 当たり判定（刀武器の納刀3撃目。倍率は weapon_rate/katana）
scoreboard players set #hit twm_tmp 3
function test_weapon_motion:weapon_rate/katana
function test_weapon_motion:weapon_hit/front3
