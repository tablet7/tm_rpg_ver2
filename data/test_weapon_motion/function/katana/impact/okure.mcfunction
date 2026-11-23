#> test_weapon_motion:katana/impact/okure

# 納刀斬りの遅れ斬撃（71 コマ目。鍔鳴りのあと）。画面を横切る光る線はモデル（71〜73 コマ）に入っている。katana/attack/advance から呼ばれる
# 目の前に、右下へ少し傾いた横一文字の斬撃を出す（^ の左右は + が左）。最後に当たり判定（weapon_hit/front3）を呼ぶ
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:sweep_attack ^2.0 ^0.35 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^1.0 ^0.25 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^ ^0.12 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^-1.0 ^0.0 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:sweep_attack ^-2.0 ^-0.1 ^3 0 0 0 0 1
execute anchored eyes run particle minecraft:end_rod ^ ^0.12 ^3 1.6 0.05 0.3 0.02 25
execute anchored eyes run particle minecraft:crit ^ ^0.12 ^3 1.5 0.2 0.5 0.4 30
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.7
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.8
playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 0.6 1.6

# 当たり判定（刀武器の抜刀5撃目。倍率は weapon_rate/katana）
scoreboard players set #hit twm_tmp 5
function test_weapon_motion:weapon_rate/katana
function test_weapon_motion:weapon_hit/front3
