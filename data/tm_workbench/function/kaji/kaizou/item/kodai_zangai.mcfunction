#> tm_workbench:kaji/kaizou/item/kodai_zangai

# 古代の残骸: 防具・アクセサリーの付いている値すべてを ＋5〜15％（値ごとに乱数。最低 ＋1）
# kaji/kaizou/success から。@s ＝ トロッコ。伸ばし方は強化と同じ（kaji/lv_up/gear_grow/s<番号>）

function tm_workbench:kaji/gear/read
scoreboard players set #lo kaji_tmp 5
scoreboard players set #span kaji_tmp 11
execute unless score #s1 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s1
execute unless score #s2 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s2
execute unless score #s3 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s3
execute unless score #s4 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s4
execute unless score #s5 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s5
execute unless score #s6 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s6
execute unless score #s7 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s7
execute unless score #s8 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s8
execute unless score #s9 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s9
execute unless score #s10 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s10
execute unless score #s11 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s11
execute unless score #s12 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s12
execute unless score #s13 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s13
execute unless score #s14 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s14
execute unless score #s15 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s15
execute unless score #s16 kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s16
function tm_workbench:kaji/gear/write
