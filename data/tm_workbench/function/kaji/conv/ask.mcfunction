#> tm_workbench:kaji/conv/ask

# 素材の変換の「全部」の 1 回目: 確認待ちにする（kaji/conv/grade から）。5 秒（100 tick）以内に同じ段階をもう一度押すと変換する
# 切れたら kaji/tick が kaji/conv/expire で表示を戻す
# @s ＝ トロッコ（持ち主に tag kaji_user）。#cvg・#cvq kaji_tmp

scoreboard players operation @s kaji_cvconf = #cvg kaji_tmp
scoreboard players operation @s kaji_cvtime = #now temp
scoreboard players add @s kaji_cvtime 100
execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] もう一度押すと、すべて（", "color": "yellow"}, {"score": {"name": "#cvq", "objective": "kaji_tmp"}, "color": "white"}, {"text": " 個）を下の段階に変換します（5 秒以内）。下の段階から上には戻せません", "color": "yellow"}]
