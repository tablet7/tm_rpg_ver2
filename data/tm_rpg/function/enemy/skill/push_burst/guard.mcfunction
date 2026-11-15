#> tm_rpg:enemy/skill/push_burst/guard

# 敵に「爆発で吹き飛ばない」属性を一時的に付ける。enemy/skill/push_burst/burst から呼ばれる
# 吹き飛ばしの爆発のあいだだけ（after・safety が外す）。ずっと付けると、クリーパーや TNT の爆発でも吹き飛ばなくなるため
# @s ＝ 近くの敵

attribute @s minecraft:explosion_knockback_resistance modifier add tm_rpg:push_guard 1 add_value
tag @s add push_guard
