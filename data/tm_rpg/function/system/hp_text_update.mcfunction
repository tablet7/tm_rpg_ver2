#> tm_rpg:system/hp_text_update

# HPバー（text_display）の表示を hp_ratio に合わせて更新する関数。player/main、enemy/main から呼ばれる
# @s ＝ HPバーの text_display（一番近いエンティティの hp_ratio を参照する）

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
