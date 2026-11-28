#> tm_workbench:test/hello

# 確認用のボタン（800001・700001）が押されたとき。gen/act_run から呼ばれる
# @s ＝ 押したプレイヤー

tellraw @s [{"text":"[確認] ボタンが押された（番号 ","color":"green"},{"score":{"name":"#act","objective":"gui_tmp"},"color":"green"},{"text":"）","color":"green"}]
