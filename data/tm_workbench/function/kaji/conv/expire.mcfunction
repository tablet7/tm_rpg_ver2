#> tm_workbench:kaji/conv/expire

# 素材の変換の「全部」の確認待ちが切れたとき（5 秒たった）。確認待ちを消して表示を戻す（kaji/tick から）
# @s ＝ トロッコ

scoreboard players set @s kaji_cvconf 0
function tm_workbench:kaji/refresh
