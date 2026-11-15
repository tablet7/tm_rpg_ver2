#> tm_rpg:player/skill/test_obj_line/skill3

# スキル「test設置物連続設置」の管理役が、子（マグマブロック）を1個出す関数。main_projectile/spawner/spawn から、tag test_obj_line で呼ばれる
# 管理役のいる場所にそのまま出す（横はマス目に合わせない。高さは管理役が地面に合わせていて、マスの中心の高さ）
# @s ＝ 管理役（at @s。実行時の向きは管理役の向き ＝ 並べる向き）

execute summon minecraft:item_display run function tm_rpg:player/skill/test_obj_line/skill4
playsound minecraft:block.lava.pop player @a ~ ~ ~ 1 1
