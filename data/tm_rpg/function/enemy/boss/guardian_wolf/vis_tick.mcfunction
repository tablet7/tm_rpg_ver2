#> tm_rpg:enemy/boss/guardian_wolf/vis_tick

# 見た目（item_display）1体の毎tick処理。guardian_wolf/part_tick から呼ばれる
# @s ＝ 見た目。実行位置と向きはマスターのもの

# マスターの位置と向きへ（teleport_duration で滑らかに動く。上下の傾きは transformation で付ける）
teleport @s ~ ~ ~ ~ 0
execute if score #swap boss_tmp matches 2 run function tm_rpg:enemy/boss/guardian_wolf/form/2
# 被弾の赤フラッシュ（モデルの面に tintindex 0、items 定義に dye の tints が要る）
execute if score #flash boss_tmp matches 6 run data modify entity @s item.components."minecraft:dyed_color" set value 14370384
execute if score #flash boss_tmp matches 1 run data modify entity @s item.components."minecraft:dyed_color" set value 16777215
# 姿勢（部位ごとの関数。キーフレームのtickだけ transformation を書く）
execute if entity @s[tag=guardian_wolf.v.body] run return run function tm_rpg:enemy/boss/guardian_wolf/v/body
execute if entity @s[tag=guardian_wolf.v.head] run return run function tm_rpg:enemy/boss/guardian_wolf/v/head
execute if entity @s[tag=guardian_wolf.v.arm_r] run return run function tm_rpg:enemy/boss/guardian_wolf/v/arm_r
execute if entity @s[tag=guardian_wolf.v.arm_l] run return run function tm_rpg:enemy/boss/guardian_wolf/v/arm_l
execute if entity @s[tag=guardian_wolf.v.tail] run return run function tm_rpg:enemy/boss/guardian_wolf/v/tail
