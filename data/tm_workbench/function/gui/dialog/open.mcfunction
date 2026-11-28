#> tm_workbench:gui/dialog/open

# interaction（tag gui）を右クリックしたとき。advancement tm_workbench:gui/open の reward から呼ばれる
# 右クリックした interaction（on target が自分の物）を探し、機能の番号・どの店かを自分に写して、最初の画面を出す（gen/dialog/open）
# 探したあと interaction の右クリックの記録を消す（次に開いたとき、古い記録に当たらないように）
# @s ＝ プレイヤー（at @s）

advancement revoke @s only tm_workbench:gui/open
tag @s add gui_me
execute as @e[type=interaction,tag=gui,distance=..8] if function tm_workbench:gui/dialog/target_is_me run tag @s add gui_hit
tag @s remove gui_me
execute unless entity @e[type=interaction,tag=gui_hit,distance=..8,limit=1] run return 0

scoreboard players operation @s gui_type = @e[type=interaction,tag=gui_hit,distance=..8,limit=1] gui_type
scoreboard players operation @s gui_id = @e[type=interaction,tag=gui_hit,distance=..8,limit=1] gui_id
data remove entity @e[type=interaction,tag=gui_hit,distance=..8,limit=1] interaction
tag @e[type=interaction,tag=gui_hit,distance=..8] remove gui_hit

scoreboard players set @s gui_page 0
scoreboard players set @s gui_act 0
scoreboard players enable @s gui_act
function tm_workbench:gen/dialog/open
