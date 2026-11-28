#> tm_workbench:gui/chest/ret_uuid

# 返す物に付ける持ち主の UUID を、トロッコのスコア gui_u0〜gui_u3 から storage tm_workbench:gui の uuid（[I;…]）に作る
# gen/chest/return_all・gen/chest/s<画面>/return_other の最初に呼ばれる。UUID が無いトロッコ（作り直す前に出した物）は #uuid gui_tmp が 0 になり、Owner を付けない
# @s ＝ トロッコ

scoreboard players set #r gui_tmp 0
data modify storage tm_workbench:gui uuid set value [I;0,0,0,0]
execute store result storage tm_workbench:gui uuid[0] int 1 run scoreboard players get @s gui_u0
execute store result storage tm_workbench:gui uuid[1] int 1 run scoreboard players get @s gui_u1
execute store result storage tm_workbench:gui uuid[2] int 1 run scoreboard players get @s gui_u2
execute store result storage tm_workbench:gui uuid[3] int 1 run scoreboard players get @s gui_u3
scoreboard players set #uuid gui_tmp 0
execute if score @s gui_u0 matches -2147483648.. run scoreboard players set #uuid gui_tmp 1
