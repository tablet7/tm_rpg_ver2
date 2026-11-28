#> tm_rpg:system/hp_text_update

# HPバー（text_display）の表示を HP の割合に合わせて更新する関数（マクロなし）
# system/stutas/hp_ratio_watch から、hp_ratio が変わったときだけ呼ばれる
# 入力: #hpbar_ratio temp ＝ 持ち主の hp_ratio（HP × 20 ÷ 最大HP）
# @s ＝ HPバーの text_display

execute if score #hpbar_ratio temp matches 21.. run return run data modify entity @s text set value {"color":"green","text":"❚❚❚❚❚❚❚❚❚❚+"}
execute if score #hpbar_ratio temp matches 19..20 run return run data modify entity @s text set value {"color":"green","text":"❚❚❚❚❚❚❚❚❚❚"}
execute if score #hpbar_ratio temp matches 17..18 run return run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚❚❚❚❚"},{"color":"red","text":"❚"}]
execute if score #hpbar_ratio temp matches 15..16 run return run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚❚❚❚"},{"color":"red","text":"❚❚"}]
execute if score #hpbar_ratio temp matches 13..14 run return run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚❚❚"},{"color":"red","text":"❚❚❚"}]
execute if score #hpbar_ratio temp matches 11..12 run return run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚❚"},{"color":"red","text":"❚❚❚❚"}]
execute if score #hpbar_ratio temp matches 9..10 run return run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚❚"},{"color":"red","text":"❚❚❚❚❚"}]
execute if score #hpbar_ratio temp matches 7..8 run return run data modify entity @s text set value [{"color":"green","text":"❚❚❚❚"},{"color":"red","text":"❚❚❚❚❚❚"}]
execute if score #hpbar_ratio temp matches 5..6 run return run data modify entity @s text set value [{"color":"green","text":"❚❚❚"},{"color":"red","text":"❚❚❚❚❚❚❚"}]
execute if score #hpbar_ratio temp matches 3..4 run return run data modify entity @s text set value [{"color":"green","text":"❚❚"},{"color":"red","text":"❚❚❚❚❚❚❚❚"}]
execute if score #hpbar_ratio temp matches 1..2 run return run data modify entity @s text set value [{"color":"green","text":"❚"},{"color":"red","text":"❚❚❚❚❚❚❚❚❚"}]
