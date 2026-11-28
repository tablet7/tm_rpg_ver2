#> tm_workbench:gui/tick

# 共通部分の毎 tick の処理。tm_workbench:tick から呼ばれる
# dialog のボタン（gui_act）・開いているトロッコの見回り・鍛冶台などを見ているか・残ったトロッコの片付け

execute as @a[scores={gui_act=1..}] at @s run function tm_workbench:gui/act

# トロッコを開いている人: 画面の物が減っていないか（gui/chest/watch）
execute as @a[tag=gui_cart_open] at @s run function tm_workbench:gui/chest/watch

# トロッコを出している人は毎 tick（目の位置に tp するため）、ほかの人は 2 tick に1回、近くに鍛冶台などがあるときだけ見る
scoreboard players add #tick gui_tmp 1
execute if score #tick gui_tmp matches 2.. run scoreboard players set #tick gui_tmp 0
execute as @a[tag=gui_has_cart] at @s run function tm_workbench:gui/chest/player
execute if score #tick gui_tmp matches 0 as @a[tag=!gui_has_cart] at @s if entity @e[type=item_display,tag=gui_block,distance=..4,limit=1] run function tm_workbench:gui/chest/player

# 2 秒ごとに、tp されなくなったトロッコを片付ける（持ち主が遠くへ移った・死んだなど）
scoreboard players add #sweep gui_tmp 1
execute if score #sweep gui_tmp matches 40.. run function tm_workbench:gui/chest/sweep
