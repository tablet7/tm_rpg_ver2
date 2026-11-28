#> tm_workbench:gui/block/place

# 機能 #place_type gui_tmp のブロック・場所を、今いる場所のブロックに置く（gen/block/place）
# コンテナ型（鍛冶台など）: バリア＋見た目の item_display。dialog（クラフトなど）: ブロック＋少し大きい interaction
# #place_id gui_tmp ＝ どの店・どの掲示板か（gui_id。入っていなければ 0）
# 使い方: scoreboard players set #place_type gui_tmp 8 → execute positioned <場所> run function tm_workbench:gui/block/place

execute unless score #place_id gui_tmp matches -2147483648.. run scoreboard players set #place_id gui_tmp 0
execute align xyz run function tm_workbench:gen/block/place
