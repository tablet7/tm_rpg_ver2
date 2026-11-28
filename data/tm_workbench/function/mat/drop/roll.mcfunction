#> tm_workbench:mat/drop/roll

# 素材の抽選を #mat_rolls gui_tmp 回する（自分を呼び直す）。mat/drop/player から呼ばれる
# @s ＝ 受け取るプレイヤー
# 表 n は 段階 n が 60％・n ＋ 1 が 30％・n ＋ 2 が 10％。数 ＝ 敵の Lv ÷（段階 ＋ 1）、0 なら 1

execute if score #mat_rolls gui_tmp matches ..0 run return 0
scoreboard players remove #mat_rolls gui_tmp 1

# 段階（範囲が 0..99 で決まっているので、random value をそのまま使う）
execute store result score #mat_r gui_tmp run random value 0..99
scoreboard players operation #mat_grade gui_tmp = #mat_table gui_tmp
execute if score #mat_r gui_tmp matches 60..89 run scoreboard players add #mat_grade gui_tmp 1
execute if score #mat_r gui_tmp matches 90.. run scoreboard players add #mat_grade gui_tmp 2

# 数
scoreboard players operation #mat_div gui_tmp = #mat_grade gui_tmp
scoreboard players add #mat_div gui_tmp 1
scoreboard players operation #mat_n gui_tmp = #mat_lv gui_tmp
scoreboard players operation #mat_n gui_tmp /= #mat_div gui_tmp
execute if score #mat_n gui_tmp matches ..0 run scoreboard players set #mat_n gui_tmp 1

function tm_workbench:gen/mat/add
function tm_workbench:mat/drop/roll
