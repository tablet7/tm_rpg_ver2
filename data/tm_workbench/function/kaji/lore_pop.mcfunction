#> tm_workbench:kaji/lore_pop

# 置いた物（10 番）の lore の最後の行を #pop kaji_tmp 行消す（自分を呼び直す）。kaji/lv_up/gear から
# @s ＝ トロッコ
# 消す行の数が物によって違う（値の数だけ）ので、item_modifier の set_lore（消す範囲が決まった数）では書けない。トロッコの中の物の NBT を直接消す（要確認: 開いている画面にすぐ出るか）

execute if score #pop kaji_tmp matches ..0 run return 0
data remove entity @s Items[{Slot:10b}].components."minecraft:lore"[-1]
scoreboard players remove #pop kaji_tmp 1
function tm_workbench:kaji/lore_pop
