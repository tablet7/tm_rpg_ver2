#> tm_rpg:player/skill/main_projectile/beam/length

# 太いレーザーの長さを、今の向きで壁まで（最大 beam_max_len マス）数え直し、見た目（item_display）もその長さに伸ばす
# main_projectile/beam/init（出したとき）と main_projectile/beam/sweep（向きが変わるレーザーの毎 tick）から呼ばれる
# @s ＝ レーザー（実行位置・向きは使わない。at @s で数える）

# 壁までの長さ（1マスずつ、通れるブロックの間だけ数える）
scoreboard players operation #beam_max temp = @s beam_max_len
scoreboard players set @s beam_length 0
execute at @s positioned ^ ^ ^1 run function tm_rpg:player/skill/main_projectile/beam/scan

# 見た目を長さに合わせる（item_display の中心から、前へ長さぶん伸ばす。向きはエンティティの向き）
execute if entity @s[type=minecraft:item_display] store result entity @s transformation.scale[2] float 1 run scoreboard players get @s beam_length
execute if entity @s[type=minecraft:item_display] store result entity @s transformation.translation[2] float 0.5 run scoreboard players get @s beam_length
