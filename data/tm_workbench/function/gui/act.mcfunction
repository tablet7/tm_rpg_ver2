#> tm_workbench:gui/act

# dialog のボタン（trigger gui_act）が押されたとき。gui/tick から呼ばれる
# trigger はチャットから手で打てるので、番号の機能が開いた機能（gui_type）と同じか、その interaction が 8 ブロック以内にあるかを確かめてから振り分ける
# 番号 ＝ 機能の番号 × 100000 ＋ 中の番号（9 は共通: タブ・ページ送りなど）
# @s ＝ プレイヤー（at @s）

scoreboard players operation #act gui_tmp = @s gui_act
scoreboard players set @s gui_act 0
scoreboard players enable @s gui_act

scoreboard players operation #f gui_tmp = #act gui_tmp
scoreboard players operation #f gui_tmp /= #100000 gui_tmp
execute unless score #f gui_tmp = @s gui_type unless score #f gui_tmp matches 9 run return fail

scoreboard players operation #t gui_tmp = @s gui_type
scoreboard players operation #i gui_tmp = @s gui_id
scoreboard players set #ok gui_tmp 0
execute as @e[type=interaction,tag=gui,distance=..8] if score @s gui_type = #t gui_tmp if score @s gui_id = #i gui_tmp run scoreboard players set #ok gui_tmp 1
execute if score #ok gui_tmp matches 0 run return run tellraw @s {"text":"離れすぎています。もう一度右クリックしてください","color":"red"}

function tm_workbench:gen/act_run
