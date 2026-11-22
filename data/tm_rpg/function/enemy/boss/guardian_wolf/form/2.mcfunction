#> tm_rpg:enemy/boss/guardian_wolf/form/2

# 見た目を形態 2 のモデルに差し替える。guardian_wolf/vis_tick から呼ばれる
# @s ＝ 見た目（item_display）

data modify entity @s[tag=guardian_wolf.v.body] item.components."minecraft:item_model" set value "tm_rpg:boss/guardian_wolf/body2"
data modify entity @s[tag=guardian_wolf.v.head] item.components."minecraft:item_model" set value "tm_rpg:boss/guardian_wolf/head2"
data modify entity @s[tag=guardian_wolf.v.arm_r] item.components."minecraft:item_model" set value "tm_rpg:boss/guardian_wolf/arm_r2"
data modify entity @s[tag=guardian_wolf.v.arm_l] item.components."minecraft:item_model" set value "tm_rpg:boss/guardian_wolf/arm_l2"
data modify entity @s[tag=guardian_wolf.v.tail] item.components."minecraft:item_model" set value "tm_rpg:boss/guardian_wolf/tail2"
