#> test_weapon_motion:katana/impact/saya_uchi

# 納刀の2撃目（鞘打ち下ろし）が当たる瞬間（12 コマ目）の演出。katana/attack/advance から呼ばれる
# 真上から鞘を叩き下ろし、3 マス先の足もとに土ぼこりを立てる。最後に当たり判定（weapon_hit/front3）を呼ぶ
# @s ＝ プレイヤー（at @s）

execute anchored eyes run particle minecraft:crit ^ ^0.3 ^2.8 0.2 0.6 0.2 0.3 15
# 足もと: 見下ろしていても地面の高さになるように、上下の向きを 0 にしてから 3 マス前へ
execute rotated ~ 0 positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.1 ~ 0.5 0 0.5 0.04 10
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.9
playsound minecraft:block.wood.break player @a ~ ~ ~ 0.8 0.7

# 当たり判定（刀武器の納刀2撃目。倍率は weapon_rate/katana）
scoreboard players set #hit twm_tmp 2
function test_weapon_motion:weapon_rate/katana
function test_weapon_motion:weapon_hit/front3
