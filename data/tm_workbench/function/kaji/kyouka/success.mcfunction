#> tm_workbench:kaji/kyouka/success

# 強化に成功したとき。Lv ＋1・強化回数 ＋1 にして、Lv が上がったときの伸び（kaji/lv_up）を動かす。kaji/kyouka/do から
# @s ＝ トロッコ。storage tm_workbench:kaji item ＝ 置いた物の custom_data（kaji/recheck で読んだ物）

scoreboard players add #lv kaji_tmp 1
scoreboard players add #kk kaji_tmp 1
execute store result storage tm_workbench:kaji item.lv int 1 run scoreboard players get #lv kaji_tmp
execute store result storage tm_workbench:kaji item.kyouka int 1 run scoreboard players get #kk kaji_tmp
# lore の「( )」に出す改造できる回数（強化回数 10 ごとに増える）
function tm_workbench:kaji/kzc
function tm_workbench:kaji/lv_up
execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.8 1.2
tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] 強化に成功しました。Lv ", "color": "green"}, {"score": {"name": "#lv", "objective": "kaji_tmp"}, "color": "green"}]
# 強化回数が 10 の倍数になったら、改造できる回数が増える
scoreboard players operation #d kaji_tmp = #kk kaji_tmp
scoreboard players operation #d kaji_tmp %= #10 kaji_tmp
execute if score #d kaji_tmp matches 0 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 改造できる回数が 1 増えました", "color": "gold"}
