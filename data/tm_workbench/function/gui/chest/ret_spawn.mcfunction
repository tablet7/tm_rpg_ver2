#> tm_workbench:gui/chest/ret_spawn

# 返す物を入れる落とし物（仮の石）を、今いる場所に出す。gen/chest/return_all・return_other から、返す物がある枠ごとに呼ばれる
# 中身は呼んだ側が item replace … from で写す。PickupDelay 0 で、持ち主しか拾えないように Owner を付ける（#uuid gui_tmp が 1 のとき）
# tag gui_ret は返した物の目印（tm_rpg:reload で消さないようにするときに使う）
# @s ＝ トロッコ（いる場所 ＝ 出す場所）

scoreboard players set #r gui_tmp 1
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["gui_drop","gui_ret"]}
execute if score #uuid gui_tmp matches 1 run data modify entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] Owner set from storage tm_workbench:gui uuid
