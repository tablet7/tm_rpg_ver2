#> tm_rpg:player/dash/impulse_bits

# impulse から呼ばれ、#dash_l / #dash_u / #dash_f（0.05 ブロック/tick 単位）をビットごとのスコアに分ける
# @s ＝ プレイヤー。dash_<軸><ビット> に、そのビットが立っていれば向き（1 か -1）を入れる（呼ぶ前に impulse_reset で 0 にしてある）
# 各軸 -63〜63（-3.15〜3.15 ブロック/tick）に収める

# 左右（+が左）
scoreboard players set #dash_sgn temp 1
execute if score #dash_l temp matches ..-1 run scoreboard players set #dash_sgn temp -1
scoreboard players operation #dash_l temp *= #dash_sgn temp
execute if score #dash_l temp matches 64.. run scoreboard players set #dash_l temp 63
execute if score #dash_l temp matches 32.. run scoreboard players operation @s dash_l32 = #dash_sgn temp
execute if score #dash_l temp matches 32.. run scoreboard players remove #dash_l temp 32
execute if score #dash_l temp matches 16.. run scoreboard players operation @s dash_l16 = #dash_sgn temp
execute if score #dash_l temp matches 16.. run scoreboard players remove #dash_l temp 16
execute if score #dash_l temp matches 8.. run scoreboard players operation @s dash_l8 = #dash_sgn temp
execute if score #dash_l temp matches 8.. run scoreboard players remove #dash_l temp 8
execute if score #dash_l temp matches 4.. run scoreboard players operation @s dash_l4 = #dash_sgn temp
execute if score #dash_l temp matches 4.. run scoreboard players remove #dash_l temp 4
execute if score #dash_l temp matches 2.. run scoreboard players operation @s dash_l2 = #dash_sgn temp
execute if score #dash_l temp matches 2.. run scoreboard players remove #dash_l temp 2
execute if score #dash_l temp matches 1.. run scoreboard players operation @s dash_l1 = #dash_sgn temp
execute if score #dash_l temp matches 1.. run scoreboard players remove #dash_l temp 1

# 上下（+が上）
scoreboard players set #dash_sgn temp 1
execute if score #dash_u temp matches ..-1 run scoreboard players set #dash_sgn temp -1
scoreboard players operation #dash_u temp *= #dash_sgn temp
execute if score #dash_u temp matches 64.. run scoreboard players set #dash_u temp 63
execute if score #dash_u temp matches 32.. run scoreboard players operation @s dash_u32 = #dash_sgn temp
execute if score #dash_u temp matches 32.. run scoreboard players remove #dash_u temp 32
execute if score #dash_u temp matches 16.. run scoreboard players operation @s dash_u16 = #dash_sgn temp
execute if score #dash_u temp matches 16.. run scoreboard players remove #dash_u temp 16
execute if score #dash_u temp matches 8.. run scoreboard players operation @s dash_u8 = #dash_sgn temp
execute if score #dash_u temp matches 8.. run scoreboard players remove #dash_u temp 8
execute if score #dash_u temp matches 4.. run scoreboard players operation @s dash_u4 = #dash_sgn temp
execute if score #dash_u temp matches 4.. run scoreboard players remove #dash_u temp 4
execute if score #dash_u temp matches 2.. run scoreboard players operation @s dash_u2 = #dash_sgn temp
execute if score #dash_u temp matches 2.. run scoreboard players remove #dash_u temp 2
execute if score #dash_u temp matches 1.. run scoreboard players operation @s dash_u1 = #dash_sgn temp
execute if score #dash_u temp matches 1.. run scoreboard players remove #dash_u temp 1

# 前後（+が前）
scoreboard players set #dash_sgn temp 1
execute if score #dash_f temp matches ..-1 run scoreboard players set #dash_sgn temp -1
scoreboard players operation #dash_f temp *= #dash_sgn temp
execute if score #dash_f temp matches 64.. run scoreboard players set #dash_f temp 63
execute if score #dash_f temp matches 32.. run scoreboard players operation @s dash_f32 = #dash_sgn temp
execute if score #dash_f temp matches 32.. run scoreboard players remove #dash_f temp 32
execute if score #dash_f temp matches 16.. run scoreboard players operation @s dash_f16 = #dash_sgn temp
execute if score #dash_f temp matches 16.. run scoreboard players remove #dash_f temp 16
execute if score #dash_f temp matches 8.. run scoreboard players operation @s dash_f8 = #dash_sgn temp
execute if score #dash_f temp matches 8.. run scoreboard players remove #dash_f temp 8
execute if score #dash_f temp matches 4.. run scoreboard players operation @s dash_f4 = #dash_sgn temp
execute if score #dash_f temp matches 4.. run scoreboard players remove #dash_f temp 4
execute if score #dash_f temp matches 2.. run scoreboard players operation @s dash_f2 = #dash_sgn temp
execute if score #dash_f temp matches 2.. run scoreboard players remove #dash_f temp 2
execute if score #dash_f temp matches 1.. run scoreboard players operation @s dash_f1 = #dash_sgn temp
execute if score #dash_f temp matches 1.. run scoreboard players remove #dash_f temp 1
