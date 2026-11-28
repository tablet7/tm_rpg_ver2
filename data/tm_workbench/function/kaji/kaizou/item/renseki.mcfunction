#> tm_workbench:kaji/kaizou/item/renseki

# 錬石: Lv ＋1 と、Lv が上がったときの伸び（強化と同じ kaji/lv_up）。強化回数は増やさない
# kaji/kaizou/success から。@s ＝ トロッコ（Lv の上限は kaji/kaizou/calc_have で確かめてある）

scoreboard players add #lv kaji_tmp 1
execute store result storage tm_workbench:kaji item.lv int 1 run scoreboard players get #lv kaji_tmp
function tm_workbench:kaji/lv_up
tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] Lv ", "color": "green"}, {"score": {"name": "#lv", "objective": "kaji_tmp"}, "color": "green"}, {"text": " になりました", "color": "green"}]
