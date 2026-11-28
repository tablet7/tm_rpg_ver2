#> tm_workbench:kaji/kyouka/fail

# 強化に失敗したとき（素材・gold は使ったまま。Lv・強化回数は変えない）。kaji/kyouka/do から
# @s ＝ トロッコ

execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 0.8
tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] 強化に失敗しました（成功率 ", "color": "red"}, {"score": {"name": "#rate", "objective": "kaji_tmp"}, "color": "red"}, {"text": "%）", "color": "red"}]
