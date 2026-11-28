#> tm_workbench:kaji/fake

# トロッコのスコアを計算用（kaji_tmp）に写す。#state ＝ 0 何も無い・1 強化・分解できない物・2 できる物
# @s ＝ トロッコ

scoreboard players set #state kaji_tmp 0
scoreboard players set #kind kaji_tmp 0
scoreboard players set #lv kaji_tmp 0
scoreboard players set #kk kaji_tmp 0
scoreboard players set #kz kaji_tmp 0
scoreboard players set #res kaji_tmp 2
scoreboard players set #kzc kaji_tmp 0
execute unless score @s kaji_has matches 1 run return 0
scoreboard players set #state kaji_tmp 1
execute if score @s kaji_kind matches 1..3 run scoreboard players set #state kaji_tmp 2
scoreboard players operation #kind kaji_tmp = @s kaji_kind
scoreboard players operation #lv kaji_tmp = @s kaji_lv
scoreboard players operation #kk kaji_tmp = @s kaji_kyouka
scoreboard players operation #kz kaji_tmp = @s kaji_kaizou
scoreboard players operation #res kaji_tmp = @s kaji_res
# 改造できる回数（#kzc）
function tm_workbench:kaji/kzc
