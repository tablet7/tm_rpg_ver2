#> tm_workbench:gui/show

# storage tm_workbench:gui の dialog を出すマクロ関数。数字や持っている物が入る dialog を出すときに呼ぶ
# dialog show は storage を直接読めず、dialog の中ではスコアの文字も出ないので、組み立てた中身をマクロで渡す（マクロでしか書けない。ボタンを押したときに1回だけ動く）
# 使い方: function tm_workbench:gui/show with storage tm_workbench:gui
# 引数: dialog（dialog の中身）
# @s ＝ プレイヤー

# マクロ: 組み立てた dialog の中身を storage から渡すため
$dialog show @s $(dialog)
