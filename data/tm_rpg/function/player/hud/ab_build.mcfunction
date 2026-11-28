#> tm_rpg:player/hud/ab_build

# HUD の状態異常の段（アイコン＋威力＋残り秒数）を storage tm_rpg:hud の row と post に作る関数（マクロなし）
# player/hud/show が title の直前に呼び、row[]・post[] の順に nbt の部品（interpret）で読む。storage は全員で共有だが、作ってすぐ送るので混ざらない
# 1つ ＝ アイコン（10px）＋ 威力（4px × 桁。状態異常の色）＋ 間 @E109（2px）＋ 秒数（灰色。数字と、その幅を打ち消す hud_neg）＋ 秒数の場所 @E108（13px）
#        ＋ 埋め（威力の桁数で @E10A 1桁・@E10B 2桁・@E10C 3桁・@E10D 999+）＝ 40px
# 中央にそろえるため、1つ足すごとに row の先頭と post に @E107（-20px）を1つずつ足す（全体の送り幅は 0 のまま）。@ は \u
# 威力は 1000 以上なら 999+、秒数は 100 以上なら 99+。アイコンの文字（tm_rpg:hud_ab）: @E000 火傷・@E001 出血・@E002 破裂・@E003 沈潜・@E004 振動
# @s ＝ プレイヤー

data modify storage tm_rpg:hud row set value []
data modify storage tm_rpg:hud post set value []

# 火傷
execute if score @s burn_time matches 1.. run data modify storage tm_rpg:hud row prepend value {"text":"\ue107","font":"tm_rpg:hud_icon"}
execute if score @s burn_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue000","font":"tm_rpg:hud_ab","shadow_color":0}
execute if score @s burn_time matches 1.. unless score @s burn_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"burn_potency"},"font":"tm_rpg:hud_ab_pot","color":"#ff5555"}
execute if score @s burn_time matches 1.. if score @s burn_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"999+","font":"tm_rpg:hud_ab_pot","color":"#ff5555"}
execute if score @s burn_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue109","font":"tm_rpg:hud_icon"}
execute if score @s burn_time matches 1.. if score @s burn_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"burn_time"},"font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s burn_time matches 1.. if score @s burn_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"burn_time"},"font":"tm_rpg:hud_neg"}
execute if score @s burn_time matches 1.. if score @s burn_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s burn_time matches 1.. if score @s burn_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_neg"}
execute if score @s burn_time matches 1.. unless score @s burn_potency matches 10.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10a","font":"tm_rpg:hud_icon"}
execute if score @s burn_time matches 1.. if score @s burn_potency matches 10..99 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10b","font":"tm_rpg:hud_icon"}
execute if score @s burn_time matches 1.. if score @s burn_potency matches 100..999 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10c","font":"tm_rpg:hud_icon"}
execute if score @s burn_time matches 1.. if score @s burn_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10d","font":"tm_rpg:hud_icon"}
execute if score @s burn_time matches 1.. run data modify storage tm_rpg:hud post append value {"text":"\ue107","font":"tm_rpg:hud_icon"}

# 出血
execute if score @s bleeding_time matches 1.. run data modify storage tm_rpg:hud row prepend value {"text":"\ue107","font":"tm_rpg:hud_icon"}
execute if score @s bleeding_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue001","font":"tm_rpg:hud_ab","shadow_color":0}
execute if score @s bleeding_time matches 1.. unless score @s bleeding_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"bleeding_potency"},"font":"tm_rpg:hud_ab_pot","color":"#d03030"}
execute if score @s bleeding_time matches 1.. if score @s bleeding_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"999+","font":"tm_rpg:hud_ab_pot","color":"#d03030"}
execute if score @s bleeding_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue109","font":"tm_rpg:hud_icon"}
execute if score @s bleeding_time matches 1.. if score @s bleeding_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"bleeding_time"},"font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s bleeding_time matches 1.. if score @s bleeding_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"bleeding_time"},"font":"tm_rpg:hud_neg"}
execute if score @s bleeding_time matches 1.. if score @s bleeding_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s bleeding_time matches 1.. if score @s bleeding_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_neg"}
execute if score @s bleeding_time matches 1.. unless score @s bleeding_potency matches 10.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10a","font":"tm_rpg:hud_icon"}
execute if score @s bleeding_time matches 1.. if score @s bleeding_potency matches 10..99 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10b","font":"tm_rpg:hud_icon"}
execute if score @s bleeding_time matches 1.. if score @s bleeding_potency matches 100..999 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10c","font":"tm_rpg:hud_icon"}
execute if score @s bleeding_time matches 1.. if score @s bleeding_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10d","font":"tm_rpg:hud_icon"}
execute if score @s bleeding_time matches 1.. run data modify storage tm_rpg:hud post append value {"text":"\ue107","font":"tm_rpg:hud_icon"}

# 破裂
execute if score @s rupture_time matches 1.. run data modify storage tm_rpg:hud row prepend value {"text":"\ue107","font":"tm_rpg:hud_icon"}
execute if score @s rupture_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue002","font":"tm_rpg:hud_ab","shadow_color":0}
execute if score @s rupture_time matches 1.. unless score @s rupture_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"rupture_potency"},"font":"tm_rpg:hud_ab_pot","color":"#55ff55"}
execute if score @s rupture_time matches 1.. if score @s rupture_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"999+","font":"tm_rpg:hud_ab_pot","color":"#55ff55"}
execute if score @s rupture_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue109","font":"tm_rpg:hud_icon"}
execute if score @s rupture_time matches 1.. if score @s rupture_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"rupture_time"},"font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s rupture_time matches 1.. if score @s rupture_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"rupture_time"},"font":"tm_rpg:hud_neg"}
execute if score @s rupture_time matches 1.. if score @s rupture_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s rupture_time matches 1.. if score @s rupture_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_neg"}
execute if score @s rupture_time matches 1.. unless score @s rupture_potency matches 10.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10a","font":"tm_rpg:hud_icon"}
execute if score @s rupture_time matches 1.. if score @s rupture_potency matches 10..99 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10b","font":"tm_rpg:hud_icon"}
execute if score @s rupture_time matches 1.. if score @s rupture_potency matches 100..999 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10c","font":"tm_rpg:hud_icon"}
execute if score @s rupture_time matches 1.. if score @s rupture_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10d","font":"tm_rpg:hud_icon"}
execute if score @s rupture_time matches 1.. run data modify storage tm_rpg:hud post append value {"text":"\ue107","font":"tm_rpg:hud_icon"}

# 沈潜
execute if score @s sinking_time matches 1.. run data modify storage tm_rpg:hud row prepend value {"text":"\ue107","font":"tm_rpg:hud_icon"}
execute if score @s sinking_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue003","font":"tm_rpg:hud_ab","shadow_color":0}
execute if score @s sinking_time matches 1.. unless score @s sinking_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"sinking_potency"},"font":"tm_rpg:hud_ab_pot","color":"#6090ff"}
execute if score @s sinking_time matches 1.. if score @s sinking_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"999+","font":"tm_rpg:hud_ab_pot","color":"#6090ff"}
execute if score @s sinking_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue109","font":"tm_rpg:hud_icon"}
execute if score @s sinking_time matches 1.. if score @s sinking_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"sinking_time"},"font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s sinking_time matches 1.. if score @s sinking_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"sinking_time"},"font":"tm_rpg:hud_neg"}
execute if score @s sinking_time matches 1.. if score @s sinking_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s sinking_time matches 1.. if score @s sinking_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_neg"}
execute if score @s sinking_time matches 1.. unless score @s sinking_potency matches 10.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10a","font":"tm_rpg:hud_icon"}
execute if score @s sinking_time matches 1.. if score @s sinking_potency matches 10..99 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10b","font":"tm_rpg:hud_icon"}
execute if score @s sinking_time matches 1.. if score @s sinking_potency matches 100..999 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10c","font":"tm_rpg:hud_icon"}
execute if score @s sinking_time matches 1.. if score @s sinking_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10d","font":"tm_rpg:hud_icon"}
execute if score @s sinking_time matches 1.. run data modify storage tm_rpg:hud post append value {"text":"\ue107","font":"tm_rpg:hud_icon"}

# 振動
execute if score @s vibration_time matches 1.. run data modify storage tm_rpg:hud row prepend value {"text":"\ue107","font":"tm_rpg:hud_icon"}
execute if score @s vibration_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue004","font":"tm_rpg:hud_ab","shadow_color":0}
execute if score @s vibration_time matches 1.. unless score @s vibration_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"vibration_potency"},"font":"tm_rpg:hud_ab_pot","color":"#ffff55"}
execute if score @s vibration_time matches 1.. if score @s vibration_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"999+","font":"tm_rpg:hud_ab_pot","color":"#ffff55"}
execute if score @s vibration_time matches 1.. run data modify storage tm_rpg:hud row append value {"text":"\ue109","font":"tm_rpg:hud_icon"}
execute if score @s vibration_time matches 1.. if score @s vibration_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"vibration_time"},"font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s vibration_time matches 1.. if score @s vibration_time matches ..99 run data modify storage tm_rpg:hud row append value {"score":{"name":"@s","objective":"vibration_time"},"font":"tm_rpg:hud_neg"}
execute if score @s vibration_time matches 1.. if score @s vibration_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_ab_num","color":"#aaaaaa"}
execute if score @s vibration_time matches 1.. if score @s vibration_time matches 100.. run data modify storage tm_rpg:hud row append value {"text":"99+","font":"tm_rpg:hud_neg"}
execute if score @s vibration_time matches 1.. unless score @s vibration_potency matches 10.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10a","font":"tm_rpg:hud_icon"}
execute if score @s vibration_time matches 1.. if score @s vibration_potency matches 10..99 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10b","font":"tm_rpg:hud_icon"}
execute if score @s vibration_time matches 1.. if score @s vibration_potency matches 100..999 run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10c","font":"tm_rpg:hud_icon"}
execute if score @s vibration_time matches 1.. if score @s vibration_potency matches 1000.. run data modify storage tm_rpg:hud row append value {"text":"\ue108\ue10d","font":"tm_rpg:hud_icon"}
execute if score @s vibration_time matches 1.. run data modify storage tm_rpg:hud post append value {"text":"\ue107","font":"tm_rpg:hud_icon"}
