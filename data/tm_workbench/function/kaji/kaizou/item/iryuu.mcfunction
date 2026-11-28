#> tm_workbench:kaji/kaizou/item/iryuu

# 異流石: 武器・スキルの参照ステータス（sanshou_type）を、攻撃力（#kit 7）なら 1、魔法攻撃力（#kit 8）なら 2 にする
# kaji/kaizou/success から。@s ＝ トロッコ

scoreboard players set #st kaji_tmp 1
execute if score #kit kaji_tmp matches 8 run scoreboard players set #st kaji_tmp 2
execute store result storage tm_workbench:kaji item.sanshou_type int 1 run scoreboard players get #st kaji_tmp
# lore の参照ステータスの行: 武器は 1 行目、スキルは 4 行目
execute if score #kind kaji_tmp matches 1 run item modify entity @s container.10 tm_workbench:kaji/kaizou/stype_w
execute if score #kind kaji_tmp matches 2 run item modify entity @s container.10 tm_workbench:kaji/kaizou/stype_s
