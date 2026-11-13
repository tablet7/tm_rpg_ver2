#> tm_rpg:system/delete_entity_direction/image_main

# 見た目用のエンティティ（tag image_marker）の毎 tick のパーティクル。player/skill/main_projectile/tick から呼ばれる
# @s ＝ 見た目用のエンティティ（at @s）

# 火
execute if entity @s[tag=fire] run particle flame ~ ~ ~ 0.0 0.0 0.0 0.01 3

# 黒い靄
execute if entity @s[tag=dark_trap] run particle squid_ink ~ ~ ~ 0.0 0.0 0.0 0.01 3

# 光
execute if entity @s[tag=star_light] run particle end_rod ~ ~ ~ 0.15 0.3 0.15 0.01 20

# エンダーチェスト
execute if entity @s[tag=ender_chest_particle] run particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.01 1


