#> tm_workbench:kaji/kaizou/item/kanousei_kohaku

# 可能性の琥珀: 防具・アクセサリーの付いていない値（0 の値）を1つ選んで付ける
# kaji/kaizou/success から。@s ＝ トロッコ。全部付いているときは kaji/kaizou/calc で止めてある
# 入力: #plv kaji_tmp（自分の Lv。kaji/kaizou/calc_have）

function tm_workbench:kaji/gear/read
# 付いていない値（0 の値）の数と、その中から何番目を選ぶか（乱数 % 数）
scoreboard players set #z kaji_tmp 16
scoreboard players operation #z kaji_tmp -= #cnt kaji_tmp
execute store result score #pick kaji_tmp run random value 0..2147483646
scoreboard players operation #pick kaji_tmp %= #z kaji_tmp
scoreboard players set #pstat kaji_tmp 0
execute if score #s1 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 1
execute if score #s1 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s2 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 2
execute if score #s2 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s3 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 3
execute if score #s3 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s4 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 4
execute if score #s4 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s5 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 5
execute if score #s5 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s6 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 6
execute if score #s6 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s7 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 7
execute if score #s7 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s8 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 8
execute if score #s8 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s9 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 9
execute if score #s9 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s10 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 10
execute if score #s10 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s11 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 11
execute if score #s11 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s12 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 12
execute if score #s12 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s13 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 13
execute if score #s13 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s14 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 14
execute if score #s14 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s15 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 15
execute if score #s15 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
execute if score #s16 kaji_tmp matches 0 if score #pick kaji_tmp matches 0 run scoreboard players set #pstat kaji_tmp 16
execute if score #s16 kaji_tmp matches 0 run scoreboard players remove #pick kaji_tmp 1
# 値: 範囲はドロップと同じ（tm_rpg:system/item_drop/stat_range）で必ず付ける（#per 100）。Lv は自分の Lv
scoreboard players operation #stat item_roll = #pstat kaji_tmp
function tm_rpg:system/item_drop/stat_range
scoreboard players set #per item_roll 100
scoreboard players operation #lv item_roll = #plv kaji_tmp
function tm_rpg:system/item_drop/roll
execute if score #pstat kaji_tmp matches 1 run scoreboard players operation #s1 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 2 run scoreboard players operation #s2 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 3 run scoreboard players operation #s3 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 4 run scoreboard players operation #s4 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 5 run scoreboard players operation #s5 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 6 run scoreboard players operation #s6 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 7 run scoreboard players operation #s7 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 8 run scoreboard players operation #s8 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 9 run scoreboard players operation #s9 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 10 run scoreboard players operation #s10 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 11 run scoreboard players operation #s11 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 12 run scoreboard players operation #s12 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 13 run scoreboard players operation #s13 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 14 run scoreboard players operation #s14 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 15 run scoreboard players operation #s15 kaji_tmp = #result item_roll
execute if score #pstat kaji_tmp matches 16 run scoreboard players operation #s16 kaji_tmp = #result item_roll
# 書く（#pop は付ける前の値の数のまま。kaji/gear/write が今の値の行を消してから付け直す）
function tm_workbench:kaji/gear/write
