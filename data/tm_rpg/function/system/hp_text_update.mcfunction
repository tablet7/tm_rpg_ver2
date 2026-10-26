# tm_rpg:system/hp_text_update

execute if score @e[limit=1,sort=nearest] hp_ratio matches 21.. run data modify entity @s text set value {"color":"green","text":"❚❚❚❚❚❚❚❚❚❚+"}
execute if score @e[limit=1,sort=nearest] hp_ratio matches 19..20 run data modify entity @s text set value {"color":"green","text":"❚❚❚❚❚❚❚❚❚❚"}
execute if score @e[limit=1,sort=nearest] hp_ratio matches 17..18 run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚❚❚❚❚"},{"color":"red","text":"❚"}]
execute if score @e[limit=1,sort=nearest] hp_ratio matches 15..16 run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚❚❚❚"},{"color":"red","text":"❚❚"}]
execute if score @e[limit=1,sort=nearest] hp_ratio matches 13..14 run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚❚❚"},{"color":"red","text":"❚❚❚"}]
execute if score @e[limit=1,sort=nearest] hp_ratio matches 11..12 run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚❚"},{"color":"red","text":"❚❚❚❚"}]
execute if score @e[limit=1,sort=nearest] hp_ratio matches 9..10 run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚"},{"color":"red","text":"❚❚❚❚❚"}]
execute if score @e[limit=1,sort=nearest] hp_ratio matches 7..8 run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚"},{"color":"red","text":"❚❚❚❚❚❚"}]
execute if score @e[limit=1,sort=nearest] hp_ratio matches 5..6 run data modify entity @s text set value [{"color":"green","text":"❚❚❚"},{"color":"red","text":"❚❚❚❚❚❚❚"}]
execute if score @e[limit=1,sort=nearest] hp_ratio matches 3..4 run data modify entity @s text set value [{"color":"green","text":"❚❚"},{"color":"red","text":"❚❚❚❚❚❚❚❚"}]
execute if score @e[limit=1,sort=nearest] hp_ratio matches 1..2 run data modify entity @s text set value [{"color":"green","text":"❚"},{"color":"red","text":"❚❚❚❚❚❚❚❚❚"}]
