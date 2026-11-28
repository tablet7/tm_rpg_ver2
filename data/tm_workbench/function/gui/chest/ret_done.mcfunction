#> tm_workbench:gui/chest/ret_done

# 1つ返し終わったときの後片付け（落とし物の目印を外し、返した数を足す）。gen/chest/return_all・return_other から呼ばれる
# @s ＝ トロッコ（いる場所 ＝ 落とし物を出した場所）

tag @e[type=item,tag=gui_drop,distance=..0.1] remove gui_drop
scoreboard players set #r gui_tmp 0
scoreboard players add #ret gui_tmp 1
