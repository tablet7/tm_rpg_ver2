#> tm_rpg:player/skill/main_projectile/tick

# 弾（tag projectile）の毎 tick の処理。main から呼ばれる
# 順番: 当たり判定（種類ごとの処理も） → 移動 → 見た目
# 消える時間（kill_time）は、ほかの消えるエンティティと同じく main の system kill（tag delete_entity）が減らして消す
# @s ＝ 弾（at @s）

# 当たり判定と種類ごとの処理（1 が返ったら、貫通しない弾が当たったので消える）
execute if entity @s[tag=damage_marker] if function tm_rpg:system/delete_entity_direction/damage_main run return run kill @s

# 移動（tag move_entity）
execute if entity @s[tag=move_entity] run function tm_rpg:system/delete_entity_direction/move_main

# 見た目（tag image_marker）。移動したあとの場所で出す
execute if entity @s[tag=image_marker] at @s run function tm_rpg:system/delete_entity_direction/image_main
