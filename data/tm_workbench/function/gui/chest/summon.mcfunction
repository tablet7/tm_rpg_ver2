#> tm_workbench:gui/chest/summon

# 自分のトロッコを目の位置に出して、最初の画面を並べる。gui/chest/show から、自分のトロッコが近くに無いときだけ呼ばれる
# トロッコの名前（画面のタイトル）・最初の画面は機能ごとに違う（gen/chest/summon・gen/chest/first）
# @s ＝ プレイヤー、#me gui_tmp ＝ 自分の ent_id、#type gui_tmp ＝ 機能の番号

# 自分の UUID をトロッコに写す（gui/chest/init）。返す物を持ち主だけが拾えるようにするため
execute unless score @s gui_u0 matches -2147483648.. run function tm_workbench:gui/uuid
scoreboard players operation #u0 gui_tmp = @s gui_u0
scoreboard players operation #u1 gui_tmp = @s gui_u1
scoreboard players operation #u2 gui_tmp = @s gui_u2
scoreboard players operation #u3 gui_tmp = @s gui_u3
function tm_workbench:gen/chest/summon
execute as @e[type=chest_minecart,tag=gui_new,distance=..8,limit=1] run function tm_workbench:gui/chest/init
