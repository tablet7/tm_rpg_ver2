#> tm_workbench:kaji/kaizou/fail

# 改造に失敗したとき（改造アイテムと gold は使ったまま。kaizou は増えない）。kaji/kaizou/do から
# @s ＝ トロッコ

execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 0.8
tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] 改造に失敗しました（成功率 ", "color": "red"}, {"score": {"name": "#rate", "objective": "kaji_tmp"}, "color": "red"}, {"text": "%）", "color": "red"}]
