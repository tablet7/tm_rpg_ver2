#> tm_workbench:kaji/kaizou/why_msg

# 改造できない理由（#why kaji_tmp）をチャットと音で知らせる（kaji/kaizou/do から。改造アイテムも gold も使わない）
# @s ＝ トロッコ（持ち主に tag kaji_user）

execute if score #why kaji_tmp matches 1 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 10 番に、改造する物を置いてください", "color": "yellow"}
execute if score #why kaji_tmp matches 2 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] これは改造できません", "color": "red"}
execute if score #why kaji_tmp matches 3 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 12 番に改造アイテムを置いてください", "color": "yellow"}
execute if score #why kaji_tmp matches 4 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 12 番の物は改造アイテムではありません", "color": "red"}
execute if score #why kaji_tmp matches 5 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 改造できる回数がありません（強化 10 回ごとに 1 回増えます）", "color": "red"}
execute if score #why kaji_tmp matches 6 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] この改造アイテムは、この物には使えません", "color": "red"}
execute if score #why kaji_tmp matches 7 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] すでに同じ状態なので、使う必要がありません", "color": "red"}
execute if score #why kaji_tmp matches 8 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] ダメージの無いスキルには使えません", "color": "red"}
execute if score #why kaji_tmp matches 9 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 付いていない値が無いので、使えません", "color": "red"}
execute if score #why kaji_tmp matches 10 run tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] Lv が足りないため使えません。Lv ", "color": "red"}, {"score": {"name": "#cap", "objective": "kaji_tmp"}, "color": "red"}, {"text": " まで上げられます", "color": "red"}]
execute if score #why kaji_tmp matches 11 run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 付いている値が無いので、使えません", "color": "red"}
execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
