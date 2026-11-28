#> tm_workbench:gui/chest/sweep_one

# 1台のトロッコについて、古くなっていて持ち主がオンラインなら、持ち主の足元で片付ける。gui/chest/sweep から呼ばれる
# @s ＝ トロッコ、#now gui_tmp ＝ 今の時刻（gametime）

scoreboard players operation #d gui_tmp = #now gui_tmp
scoreboard players operation #d gui_tmp -= @s gui_cart_time
execute if score #d gui_tmp matches ..40 run return 0
scoreboard players operation #o gui_tmp = @s gui_owner
tag @s add gui_stale
execute as @a if score @s ent_id = #o gui_tmp at @s as @e[type=chest_minecart,tag=gui_stale,limit=1] run function tm_workbench:gui/chest/close
tag @s remove gui_stale
