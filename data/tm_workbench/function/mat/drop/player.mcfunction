#> tm_workbench:mat/drop/player

# 受け取る人1人ぶんの抽選をして、手に入った素材を知らせる。mat/drop/start から呼ばれる
# @s ＝ 受け取るプレイヤー（スコア luck ＝ 装備・バフを全部含んだ運）

# 回数 ＝ 1 ＋ 運 ÷ 20（運がマイナスなら 1 回。多すぎる運でも 100 回まで）
scoreboard players operation #mat_rolls gui_tmp = @s luck
scoreboard players operation #mat_rolls gui_tmp /= #20 gui_tmp
execute if score #mat_rolls gui_tmp matches ..-1 run scoreboard players set #mat_rolls gui_tmp 0
execute if score #mat_rolls gui_tmp matches 100.. run scoreboard players set #mat_rolls gui_tmp 99
scoreboard players add #mat_rolls gui_tmp 1

# 段階ごとの合計（知らせる用）
scoreboard players set #got1 gui_tmp 0
scoreboard players set #got2 gui_tmp 0
scoreboard players set #got3 gui_tmp 0
scoreboard players set #got4 gui_tmp 0
scoreboard players set #got5 gui_tmp 0
scoreboard players set #got6 gui_tmp 0

function tm_workbench:mat/drop/roll
function tm_workbench:gen/mat/notify
