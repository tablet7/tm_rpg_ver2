#> tm_workbench:kaji/gear/write

# 防具・アクセサリーの値 #s<番号> kaji_tmp を、置いた物（10 番）の custom_data と lore に書く
# kaji/lv_up/gear・kaji/kaizou/item/ から。@s ＝ トロッコ。先に kaji/gear/read（#pop）
# lore の値の行（最後の #pop 行）を消し、tm_rpg:accessories/status で付け直す（値の行の作り方をドロップと同じにするため）
# #lv（Lv）・#kz（改造した回数）・#kk（強化回数）・#kzc（改造できる回数。lore の 0 行目の「( )」）kaji_tmp も書く

# custom_data と lore: 値の行（最後の #pop 行）を消し、tm_rpg:accessories/status で付け直す（値の行の作り方をドロップと同じにするため）
function tm_workbench:kaji/lore_pop
data modify storage tm_rpg:item_random data set value {}
execute store result storage tm_rpg:item_random data.lv int 1 run scoreboard players get #lv kaji_tmp
execute store result storage tm_rpg:item_random data.kaizou int 1 run scoreboard players get #kz kaji_tmp
execute store result storage tm_rpg:item_random data.hp int 1 run scoreboard players get #s1 kaji_tmp
scoreboard players operation hp item_roll = #s1 kaji_tmp
execute store result storage tm_rpg:item_random data.hp_rege int 1 run scoreboard players get #s2 kaji_tmp
scoreboard players operation hp_rege item_roll = #s2 kaji_tmp
execute store result storage tm_rpg:item_random data.mp int 1 run scoreboard players get #s3 kaji_tmp
scoreboard players operation mp item_roll = #s3 kaji_tmp
execute store result storage tm_rpg:item_random data.mp_rege int 1 run scoreboard players get #s4 kaji_tmp
scoreboard players operation mp_rege item_roll = #s4 kaji_tmp
execute store result storage tm_rpg:item_random data.armor int 1 run scoreboard players get #s5 kaji_tmp
scoreboard players operation armor item_roll = #s5 kaji_tmp
execute store result storage tm_rpg:item_random data.magic_armor int 1 run scoreboard players get #s6 kaji_tmp
scoreboard players operation magic_armor item_roll = #s6 kaji_tmp
execute store result storage tm_rpg:item_random data.p_attack int 1 run scoreboard players get #s7 kaji_tmp
scoreboard players operation p_attack item_roll = #s7 kaji_tmp
execute store result storage tm_rpg:item_random data.m_attack int 1 run scoreboard players get #s8 kaji_tmp
scoreboard players operation m_attack item_roll = #s8 kaji_tmp
execute store result storage tm_rpg:item_random data.cooltime int 1 run scoreboard players get #s9 kaji_tmp
scoreboard players operation cooltime item_roll = #s9 kaji_tmp
execute store result storage tm_rpg:item_random data.sustaintime int 1 run scoreboard players get #s10 kaji_tmp
scoreboard players operation sustaintime item_roll = #s10 kaji_tmp
execute store result storage tm_rpg:item_random data.range int 1 run scoreboard players get #s11 kaji_tmp
scoreboard players operation range item_roll = #s11 kaji_tmp
execute store result storage tm_rpg:item_random data.crit_per int 1 run scoreboard players get #s12 kaji_tmp
scoreboard players operation crit_per item_roll = #s12 kaji_tmp
execute store result storage tm_rpg:item_random data.crit_damage int 1 run scoreboard players get #s13 kaji_tmp
scoreboard players operation crit_damage item_roll = #s13 kaji_tmp
execute store result storage tm_rpg:item_random data.evasion int 1 run scoreboard players get #s14 kaji_tmp
scoreboard players operation evasion item_roll = #s14 kaji_tmp
execute store result storage tm_rpg:item_random data.job_bonus int 1 run scoreboard players get #s15 kaji_tmp
scoreboard players operation job_bonus item_roll = #s15 kaji_tmp
execute store result storage tm_rpg:item_random data.luck int 1 run scoreboard players get #s16 kaji_tmp
scoreboard players operation luck item_roll = #s16 kaji_tmp
item modify entity @s container.10 tm_rpg:accessories/status
item modify entity @s container.10 tm_workbench:kaji/write/gear
