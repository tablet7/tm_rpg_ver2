#> tm_rpg:system/delete_entity_direction/move_main

# 動くエンティティ（tag move_entity）の毎 tick の移動。player/skill/main_projectile/tick から呼ばれる
# @s ＝ 動くエンティティ（at @s）

#壁判定用
execute if entity @s[tag=stop_move] unless block ^ ^ ^0.6 #minecraft:replaceable run function tm_rpg:system/delete_entity_direction/remove_move_tag

# 移動
tp @s[tag=straight6] ^ ^ ^0.6
tp @s[tag=straight10] ^ ^ ^1

## 回転
execute if entity @s[tag=rotate37] run rotate @s ~37 ~