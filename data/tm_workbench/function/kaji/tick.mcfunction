#> tm_workbench:kaji/tick

# 鍛冶台の画面を開いているあいだ毎 tick。置く場所（10 番）が「空 ↔ 物あり」に変わったら読み直して表示を直す
# gen/chest/tick から呼ばれる（screens.json の tick）。@s ＝ トロッコ
# 物を直接入れ替えたとき（空にならない）は気づかないが、ボタンを押したときに読み直して比べる（kaji/recheck）

execute store success score #has kaji_tmp if items entity @s container.10 *
execute unless score @s kaji_has = #has kaji_tmp run function tm_workbench:kaji/changed
# 改造の画面（103）では、改造アイテムを置く場所（12 番）も見る
execute if score @s gui_screen matches 103 run function tm_workbench:kaji/kaizou/tick
# 素材の変換の画面（105）では、「全部」の確認待ちが切れたら表示を戻す（#now temp ＝ 今の gametime）
execute if score @s gui_screen matches 105 if score @s kaji_cvconf matches 1.. if score #now temp > @s kaji_cvtime run function tm_workbench:kaji/conv/expire
