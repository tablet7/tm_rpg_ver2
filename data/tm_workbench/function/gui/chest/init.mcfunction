#> tm_workbench:gui/chest/init

# 出したばかりのトロッコに持ち主（番号と UUID）・機能の番号を入れ、最初の画面に入る。gui/chest/summon から呼ばれる
# @s ＝ 出したトロッコ（いる場所 ＝ 持ち主の足元）

scoreboard players operation @s gui_owner = #me gui_tmp
scoreboard players operation @s gui_u0 = #u0 gui_tmp
scoreboard players operation @s gui_u1 = #u1 gui_tmp
scoreboard players operation @s gui_u2 = #u2 gui_tmp
scoreboard players operation @s gui_u3 = #u3 gui_tmp
scoreboard players operation @s gui_type = #type gui_tmp
function tm_workbench:gen/chest/first
function tm_workbench:gen/chest/enter
tag @s remove gui_new
