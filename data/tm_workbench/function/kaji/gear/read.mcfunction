#> tm_workbench:kaji/gear/read

# 防具・アクセサリーの値を #s<番号> kaji_tmp に読み、付いている値の数を #cnt・#pop kaji_tmp に入れる
# kaji/lv_up/gear・kaji/kaizou/calc・kaji/kaizou/item/ から。@s ＝ トロッコ。storage tm_workbench:kaji item ＝ 置いた物の custom_data
# 値の番号（tm_rpg:system/item_drop/stat_range と同じ順）: 1 hp・2 hp_rege・3 mp・4 mp_rege・5 armor・6 magic_armor・7 p_attack・8 m_attack・9 cooltime・10 sustaintime・11 range・12 crit_per・13 crit_damage・14 evasion・15 job_bonus・16 luck
# #pop ＝ 今の lore の値の行の数（kaji/gear/write が消す行の数。値を足す前の数のままにする）

# 値を読む（0 なら付いていない）
execute store result score #s1 kaji_tmp run data get storage tm_workbench:kaji item.hp
execute store result score #s2 kaji_tmp run data get storage tm_workbench:kaji item.hp_rege
execute store result score #s3 kaji_tmp run data get storage tm_workbench:kaji item.mp
execute store result score #s4 kaji_tmp run data get storage tm_workbench:kaji item.mp_rege
execute store result score #s5 kaji_tmp run data get storage tm_workbench:kaji item.armor
execute store result score #s6 kaji_tmp run data get storage tm_workbench:kaji item.magic_armor
execute store result score #s7 kaji_tmp run data get storage tm_workbench:kaji item.p_attack
execute store result score #s8 kaji_tmp run data get storage tm_workbench:kaji item.m_attack
execute store result score #s9 kaji_tmp run data get storage tm_workbench:kaji item.cooltime
execute store result score #s10 kaji_tmp run data get storage tm_workbench:kaji item.sustaintime
execute store result score #s11 kaji_tmp run data get storage tm_workbench:kaji item.range
execute store result score #s12 kaji_tmp run data get storage tm_workbench:kaji item.crit_per
execute store result score #s13 kaji_tmp run data get storage tm_workbench:kaji item.crit_damage
execute store result score #s14 kaji_tmp run data get storage tm_workbench:kaji item.evasion
execute store result score #s15 kaji_tmp run data get storage tm_workbench:kaji item.job_bonus
execute store result score #s16 kaji_tmp run data get storage tm_workbench:kaji item.luck
# 付いている値の数（lore の値の行の数でもある）
scoreboard players set #cnt kaji_tmp 0
execute unless score #s1 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s2 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s3 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s4 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s5 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s6 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s7 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s8 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s9 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s10 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s11 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s12 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s13 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s14 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s15 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
execute unless score #s16 kaji_tmp matches 0 run scoreboard players add #cnt kaji_tmp 1
scoreboard players operation #pop kaji_tmp = #cnt kaji_tmp
