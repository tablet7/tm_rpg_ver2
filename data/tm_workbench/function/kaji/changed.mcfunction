#> tm_workbench:kaji/changed

# 置く場所（10 番）が変わったとき。読み直して表示を直す。kaji/tick から呼ばれる
# @s ＝ トロッコ

scoreboard players operation @s kaji_has = #has kaji_tmp
function tm_workbench:kaji/read
function tm_workbench:kaji/refresh
