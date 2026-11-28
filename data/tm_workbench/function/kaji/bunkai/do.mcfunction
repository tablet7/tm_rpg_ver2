#> tm_workbench:kaji/bunkai/do

# 分解する。置いた物の Lv だけ、クラフトの欠片（mat_craft）と gold を足し、置いた物を消す
# kaji/bunkai/press から呼ばれる。@s ＝ トロッコ（持ち主に tag kaji_user）

function tm_workbench:kaji/recheck
execute if score #changed kaji_tmp matches 1 run function tm_workbench:kaji/refresh_in
execute if score #changed kaji_tmp matches 1 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 置いた物が変わったので、表示を直しました。もう一度押してください", "color": "yellow"}
execute if score #state kaji_tmp matches 0 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 10 番に分解する物を置いてください", "color": "yellow"}
execute if score #state kaji_tmp matches 1 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] これは分解できません", "color": "red"}
scoreboard players operation #gain kaji_tmp = #lv kaji_tmp
execute if score #gain kaji_tmp matches ..0 run scoreboard players set #gain kaji_tmp 1
scoreboard players operation @a[tag=kaji_user,limit=1] mat_craft += #gain kaji_tmp
scoreboard players operation @a[tag=kaji_user,limit=1] gold += #gain kaji_tmp
item replace entity @s container.10 with minecraft:air
execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 1 1
tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] 分解しました: クラフトの欠片 ×", "color": "green"}, {"score": {"name": "#gain", "objective": "kaji_tmp"}, "color": "green"}, {"text": "・gold ×", "color": "green"}, {"score": {"name": "#gain", "objective": "kaji_tmp"}, "color": "green"}]
function tm_workbench:kaji/recheck
function tm_workbench:kaji/refresh_in
