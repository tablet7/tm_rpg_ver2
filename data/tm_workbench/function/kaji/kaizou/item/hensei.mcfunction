#> tm_workbench:kaji/kaizou/item/hensei

# 変性石: 武器・スキルのダメージタイプ（damage_type）を、物理（#kit 5）なら 1、魔法（#kit 6）なら 2 にする
# kaji/kaizou/success から。@s ＝ トロッコ

scoreboard players set #dt kaji_tmp 1
execute if score #kit kaji_tmp matches 6 run scoreboard players set #dt kaji_tmp 2
execute store result storage tm_workbench:kaji item.damage_type int 1 run scoreboard players get #dt kaji_tmp
# lore のダメージタイプの行: 武器は 2 行目、スキルは 5 行目
execute if score #kind kaji_tmp matches 1 run item modify entity @s container.10 tm_workbench:kaji/kaizou/dtype_w
execute if score #kind kaji_tmp matches 2 run item modify entity @s container.10 tm_workbench:kaji/kaizou/dtype_s
