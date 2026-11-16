#> tm_rpg:system/delete_entity_direction/homing/turn

# 追尾する弾を、敵が右にいたら右、左なら左、上なら上、下なら下に、決まった角度だけ曲げる関数。homing/main から呼ばれる
# 実行時の向き ＝ 弾から敵への向き（homing/main の facing entity）、@s ＝ 弾（位置は弾）
#
# 判定のしかた（三角関数を使わず、距離だけで調べる）
#   敵への向きで1マス進んだ点（positioned ^ ^ ^1）から、弾の向き（rotated as @s）で右へ1マス戻った点が、弾から √2 より近ければ、敵は左にいる
#   （右・上・下も同じ。上下は ^ ^-1 ^ / ^ ^1 ^ で戻る）
#   しきい値を √2 より少し小さい √(2 - 2·sin(θ/2)) にして、ずれが θ/2 より小さいときは曲げない（敵の正面付近で左右に振れ続けないように）
#     θ = 5° → 1.383、θ = 10° → 1.351、θ = 20° → 1.286
# 向きの変え方: 左 ＝ yaw を減らす、右 ＝ yaw を増やす、上 ＝ pitch を減らす、下 ＝ pitch を増やす
# 上下を先に曲げる（pitch を変えても左右の判定に使う横の向きは変わらないので、あとの左右の判定がずれない）
# 速さを足すときは、4行まとめて足し、しきい値を上の式で計算する

# 5°/tick
execute if entity @s[tag=homing5] positioned ^ ^ ^1 rotated as @s positioned ^ ^-1 ^ if entity @s[distance=..1.383] run rotate @s ~ ~-5
execute if entity @s[tag=homing5] positioned ^ ^ ^1 rotated as @s positioned ^ ^1 ^ if entity @s[distance=..1.383] run rotate @s ~ ~5
execute if entity @s[tag=homing5] positioned ^ ^ ^1 rotated as @s positioned ^-1 ^ ^ if entity @s[distance=..1.383] run rotate @s ~-5 ~
execute if entity @s[tag=homing5] positioned ^ ^ ^1 rotated as @s positioned ^1 ^ ^ if entity @s[distance=..1.383] run rotate @s ~5 ~

# 10°/tick
execute if entity @s[tag=homing10] positioned ^ ^ ^1 rotated as @s positioned ^ ^-1 ^ if entity @s[distance=..1.351] run rotate @s ~ ~-10
execute if entity @s[tag=homing10] positioned ^ ^ ^1 rotated as @s positioned ^ ^1 ^ if entity @s[distance=..1.351] run rotate @s ~ ~10
execute if entity @s[tag=homing10] positioned ^ ^ ^1 rotated as @s positioned ^-1 ^ ^ if entity @s[distance=..1.351] run rotate @s ~-10 ~
execute if entity @s[tag=homing10] positioned ^ ^ ^1 rotated as @s positioned ^1 ^ ^ if entity @s[distance=..1.351] run rotate @s ~10 ~

# 20°/tick
execute if entity @s[tag=homing20] positioned ^ ^ ^1 rotated as @s positioned ^ ^-1 ^ if entity @s[distance=..1.286] run rotate @s ~ ~-20
execute if entity @s[tag=homing20] positioned ^ ^ ^1 rotated as @s positioned ^ ^1 ^ if entity @s[distance=..1.286] run rotate @s ~ ~20
execute if entity @s[tag=homing20] positioned ^ ^ ^1 rotated as @s positioned ^-1 ^ ^ if entity @s[distance=..1.286] run rotate @s ~-20 ~
execute if entity @s[tag=homing20] positioned ^ ^ ^1 rotated as @s positioned ^1 ^ ^ if entity @s[distance=..1.286] run rotate @s ~20 ~
