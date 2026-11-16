#> tm_rpg:enemy/skill/warn/init_plate

# 予兆の赤い板（item_display）の初期設定。enemy/skill/warn/start から execute summon ... run function で呼ばれる
# #warn_width / #warn_length temp（0.1 マス）の大きさにし、#warn_time temp tick で消える（tag delete_entity と kill_time）
# #warn_center temp が 0 なら足元から前へ、1 なら足元を中心に置く。#warn_offset temp（0.1 マス）だけ前へずらす
# @s ＝ 出したばかりの板。実行位置 ＝ 技を出す場所（地面の少し上）、向き ＝ 技を出す左右の向き

rotate @s ~ ~

tag @s add delete_entity
scoreboard players operation @s kill_time = #warn_time temp

# 見た目（光る赤いガラス。厚さ 0.04）。item_display のブロックは中心が原点なので、幅は左右に半分ずつ広がる
data merge entity @s {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0.04f,1f]},item:{id:"minecraft:red_stained_glass",count:1}}
execute store result entity @s transformation.scale[0] float 0.1 run scoreboard players get #warn_width temp
execute store result entity @s transformation.scale[2] float 0.1 run scoreboard players get #warn_length temp

# 前へずらす長さ（0.1 マス単位の2倍で計算して 0.05 倍する）＝ 足元から前へ伸ばすときは長さの半分 ＋ #warn_offset、中心に置くときは #warn_offset だけ
scoreboard players operation #warn_tz temp = #warn_offset temp
scoreboard players operation #warn_tz temp += #warn_offset temp
execute if score #warn_center temp matches 0 run scoreboard players operation #warn_tz temp += #warn_length temp
execute store result entity @s transformation.translation[2] float 0.05 run scoreboard players get #warn_tz temp
