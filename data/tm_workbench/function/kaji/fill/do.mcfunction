#> tm_workbench:kaji/fill/do

# 強化に足りない素材を、すぐ上の段階から崩して補う（kaji/fill/press から）。崩すのは足りない分だけ（計画は gen/kaji/fill_calc）
# 一番上の段階が足りないとき（崩しても足りない）は何も変えない。gold は補わない。Lv の上限を超えていても補う（素材が変わるだけ）
# @s ＝ トロッコ（持ち主に tag kaji_user）

function tm_workbench:kaji/recheck
execute if score #changed kaji_tmp matches 1 run function tm_workbench:kaji/refresh_in
execute if score #changed kaji_tmp matches 1 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 置いた物が変わったので、表示を直しました。もう一度押してください", "color": "yellow"}
execute if score #state kaji_tmp matches 0 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 10 番に強化する物を置いてください", "color": "yellow"}
execute if score #state kaji_tmp matches 1 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] これは強化できません", "color": "red"}
function tm_workbench:kaji/kyouka/calc
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:kaji/kyouka/calc_have
function tm_workbench:gen/kaji/fill_calc

execute if score #flst kaji_tmp matches 0 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 足りない素材はありません", "color": "yellow"}
execute if score #flst kaji_tmp matches 2 as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #flst kaji_tmp matches 2 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 一番上の段階が足りないので、崩しても足りません。何も変えていません", "color": "red"}

execute as @a[tag=kaji_user,limit=1] run function tm_workbench:gen/kaji/fill_do
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:gen/kaji/fill_msg
execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 1 1
function tm_workbench:kaji/refresh_in
