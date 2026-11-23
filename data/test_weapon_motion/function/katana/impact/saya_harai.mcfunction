#> test_weapon_motion:katana/impact/saya_harai

# 納刀の1撃目（鞘払い）が当たる瞬間（3 コマ目）の演出。katana/attack/advance から呼ばれる
# 左下から右へ、鞘で殴り払う（^ の左右は + が左）。最後に当たり判定（weapon_hit/front3）を呼ぶ
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^1.0 ^-0.5 ^2.5 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^-0.3 ^2.8 0 0 0 0 1
execute anchored eyes run particle minecraft:crit ^ ^-0.3 ^2.8 0.7 0.2 0.5 0.3 10
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 1.3
playsound minecraft:block.wood.hit player @a ~ ~ ~ 1 0.8

# 当たり判定（刀武器の納刀1撃目。倍率は weapon_rate/katana）
scoreboard players set #hit twm_tmp 1
function test_weapon_motion:weapon_rate/katana
function test_weapon_motion:weapon_hit/front3
