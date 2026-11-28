#> tm_workbench:kaji/refresh_in

# kaji/refresh の中身（持ち主に tag kaji_user が付いている）。ボタンの処理（kaji/kyouka/do など）からも呼ぶ
# @s ＝ トロッコ

function tm_workbench:kaji/fake
execute if score @s gui_screen matches 101 run function tm_workbench:kaji/refresh/menu
execute if score @s gui_screen matches 102 run function tm_workbench:kaji/refresh/kyouka
execute if score @s gui_screen matches 103 run function tm_workbench:kaji/refresh/kaizou
execute if score @s gui_screen matches 104 run function tm_workbench:kaji/refresh/bunkai
execute if score @s gui_screen matches 105 run function tm_workbench:kaji/refresh/conv
