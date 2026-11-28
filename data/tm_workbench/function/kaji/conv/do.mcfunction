#> tm_workbench:kaji/conv/do

# 素材の変換の画面（105）のボタンを、番号 #act gui_tmp で分ける（kaji/conv/press から）
# @s ＝ トロッコ（持ち主に tag kaji_user）

# 8 番: 一度に変える数（×1 → ×10 → ×100 → ×1000 → 全部 → ×1）。確認待ちは消す
execute if score #act gui_tmp matches 100012 run scoreboard players add @s kaji_cvmode 1
execute if score #act gui_tmp matches 100012 unless score @s kaji_cvmode matches 1..5 run scoreboard players set @s kaji_cvmode 1
# 21 番〜: 系統（番号 − 100020 ＝ 系統の番号）。確認待ちは消す
execute if score #act gui_tmp matches 100021..100026 run scoreboard players operation @s kaji_cvfam = #act gui_tmp
execute if score #act gui_tmp matches 100021..100026 run scoreboard players remove @s kaji_cvfam 100020
execute unless score #act gui_tmp matches 100013..100017 run scoreboard players set @s kaji_cvconf 0
execute unless score #act gui_tmp matches 100013..100017 as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
execute unless score #act gui_tmp matches 100013..100017 run return run function tm_workbench:kaji/refresh_in

# 13〜17 番: 段階 2〜6 を変換する（番号 − 100011 ＝ 段階）
scoreboard players operation #cvg kaji_tmp = #act gui_tmp
scoreboard players remove #cvg kaji_tmp 100011
function tm_workbench:kaji/conv/grade
function tm_workbench:kaji/refresh_in
