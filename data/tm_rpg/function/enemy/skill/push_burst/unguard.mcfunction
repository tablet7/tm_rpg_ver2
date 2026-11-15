#> tm_rpg:enemy/skill/push_burst/unguard

# 敵に一時的に付けた「爆発で吹き飛ばない」属性を外す。enemy/skill/push_burst/after・safety から呼ばれる
# @s ＝ だれでもよい（使わない）

execute as @e[type=#tm_rpg:mob_type,tag=push_guard] run attribute @s minecraft:explosion_knockback_resistance modifier remove tm_rpg:push_guard
tag @e[type=#tm_rpg:mob_type,tag=push_guard] remove push_guard
scoreboard players reset #push_burst_wait temp
