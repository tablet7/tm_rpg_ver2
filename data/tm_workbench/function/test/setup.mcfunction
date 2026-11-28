#> tm_workbench:test/setup

# 共通部分の確認用の台（機能 8。コンテナ型の画面 2 つ）と掲示板（機能 7。dialog）を、目の前に置く。手で /function tm_workbench:test/setup を打つ
# 確かめ方: md/gui_md/common.md。片付けは test/cleanup
# @s ＝ プレイヤー

scoreboard players set #place_id gui_tmp 0
scoreboard players set #place_type gui_tmp 8
execute rotated ~ 0 positioned ^ ^ ^2 run function tm_workbench:gui/block/place
scoreboard players set #place_type gui_tmp 7
execute rotated ~ 0 positioned ^-2 ^ ^2 run function tm_workbench:gui/block/place
tellraw @s {"text":"[確認] 目の前に確認用の台（鍛冶台の見た目）、右に確認用の掲示板（作業台）を置きました","color":"aqua"}
