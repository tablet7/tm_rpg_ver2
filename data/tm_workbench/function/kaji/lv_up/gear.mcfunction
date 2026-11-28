#> tm_workbench:kaji/lv_up/gear

# 防具・アクセサリーの伸び: 付いている値（0 でない値）から1つ選んで ＋5〜15％。kaji/lv_up から
# @s ＝ トロッコ

function tm_workbench:kaji/gear/read
# 付いている値から1つ選ぶ（何番目か ＝ 乱数 % 数）
scoreboard players set #pick kaji_tmp -1
execute if score #cnt kaji_tmp matches 1.. store result score #pick kaji_tmp run random value 0..2147483646
execute if score #cnt kaji_tmp matches 1.. run scoreboard players operation #pick kaji_tmp %= #cnt kaji_tmp
scoreboard players set #lo kaji_tmp 5
scoreboard players set #span kaji_tmp 11
execute unless score #s1 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s1
execute unless score #s1 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s2 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s2
execute unless score #s2 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s3 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s3
execute unless score #s3 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s4 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s4
execute unless score #s4 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s5 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s5
execute unless score #s5 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s6 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s6
execute unless score #s6 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s7 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s7
execute unless score #s7 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s8 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s8
execute unless score #s8 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s9 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s9
execute unless score #s9 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s10 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s10
execute unless score #s10 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s11 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s11
execute unless score #s11 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s12 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s12
execute unless score #s12 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s13 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s13
execute unless score #s13 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s14 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s14
execute unless score #s14 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s15 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s15
execute unless score #s15 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute unless score #s16 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run function tm_workbench:kaji/lv_up/gear_grow/s16
execute unless score #s16 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1

function tm_workbench:kaji/gear/write
