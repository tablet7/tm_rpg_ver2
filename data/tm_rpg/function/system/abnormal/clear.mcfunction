#> tm_rpg:system/abnormal/clear

# すべての状態異常（火傷・破裂・出血・沈潜・振動）を解除する関数。player/reload、system/abnormal/non_debuff から呼ばれる
# @s ＝ 対象のエンティティ

# 火傷
scoreboard players set @s burn_time -1
scoreboard players set @s burn_potency 0

# 破裂
scoreboard players set @s rupture_time -1
scoreboard players set @s rupture_potency 0

# 出血
scoreboard players set @s bleeding_time -1
scoreboard players set @s bleeding_potency 0

# 沈潜
scoreboard players set @s sinking_time -1
scoreboard players set @s sinking_potency 0

# 振動
scoreboard players set @s vibration_time -1
scoreboard players set @s vibration_potency 0
