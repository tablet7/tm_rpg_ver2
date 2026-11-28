#> tm_workbench:kaji/kaizou/tick

# 改造の画面（103）を開いているあいだ毎 tick。12 番の改造アイテムが変わったら表示を直す（kaji/tick から）
# @s ＝ トロッコ。見分けは if items 9 回（NBT は読まない）

scoreboard players operation #o_kit kaji_tmp = @s kaji_kit
function tm_workbench:kaji/kaizou/kit
execute unless score #o_kit kaji_tmp = #kit kaji_tmp run function tm_workbench:kaji/refresh
