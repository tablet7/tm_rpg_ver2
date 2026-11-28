#> tm_workbench:gui/chest/sweep

# tp されなくなったトロッコ（2 秒以上）を片付ける。gui/tick から 2 秒ごとに呼ばれる
# 持ち主がオンラインなら、持ち主の足元に返して消す（遠くへ移った・死んだなど）
# 持ち主がオフラインなら残す（入り直したとき、持ち主の毎 tick が使い直すか片付ける。その前にほかの人が開いたら gui/chest/on_open が片付ける）

scoreboard players set #sweep gui_tmp 0
execute store result score #now gui_tmp run time query gametime
execute as @e[type=chest_minecart,tag=gui_cart] run function tm_workbench:gui/chest/sweep_one
