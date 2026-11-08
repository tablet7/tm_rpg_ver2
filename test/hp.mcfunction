#> mibuti:system/random_status/hp

# common_accessories
## 確率
scoreboard players set ITEM_HP item_active_common_acc 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_common_acc 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_common_acc matches 1 store result score ITEM_HP item_value_common_acc run random value -1..5
execute if score ITEM_HP item_value_common_acc matches 0 run scoreboard players set ITEM_HP item_value_common_acc 1
execute if score ITEM_HP item_active_common_acc matches 1 store result storage mibuti:common_item_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_common_acc

# common_plate1
## 確率
scoreboard players set ITEM_HP item_active_common_p1 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_common_p1 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_common_p1 matches 1 store result score ITEM_HP item_value_common_p1 run random value -1..5
execute if score ITEM_HP item_value_common_p1 matches 0 run scoreboard players set ITEM_HP item_value_common_p1 1
execute if score ITEM_HP item_active_common_p1 matches 1 store result storage mibuti:common_plate1_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_common_p1

# common_plate2
## 確率
scoreboard players set ITEM_HP item_active_common_p2 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_common_p2 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_common_p2 matches 1 store result score ITEM_HP item_value_common_p2 run random value -1..5
execute if score ITEM_HP item_value_common_p2 matches 0 run scoreboard players set ITEM_HP item_value_common_p2 1
execute if score ITEM_HP item_active_common_p2 matches 1 store result storage mibuti:common_plate2_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_common_p2

# common_plate3
## 確率
scoreboard players set ITEM_HP item_active_common_p3 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_common_p3 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_common_p3 matches 1 store result score ITEM_HP item_value_common_p3 run random value -1..5
execute if score ITEM_HP item_value_common_p3 matches 0 run scoreboard players set ITEM_HP item_value_common_p3 1
execute if score ITEM_HP item_active_common_p3 matches 1 store result storage mibuti:common_plate3_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_common_p3

# common_plate4
## 確率
scoreboard players set ITEM_HP item_active_common_p4 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_common_p4 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_common_p4 matches 1 store result score ITEM_HP item_value_common_p4 run random value -1..5
execute if score ITEM_HP item_value_common_p4 matches 0 run scoreboard players set ITEM_HP item_value_common_p4 1
execute if score ITEM_HP item_active_common_p4 matches 1 store result storage mibuti:common_plate4_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_common_p4


# uncommon-------------------------------------------------------------------------------------------------------------------------------------------------------------
# uncommon_accessories
## 確率
scoreboard players set ITEM_HP item_active_uncommon_acc 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_uncommon_acc 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_uncommon_acc matches 1 store result score ITEM_HP item_value_uncommon_acc run random value -3..10
execute if score ITEM_HP item_value_uncommon_acc matches 0 run scoreboard players set ITEM_HP item_value_uncommon_acc 1
execute if score ITEM_HP item_active_uncommon_acc matches 1 store result storage mibuti:uncommon_item_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_uncommon_acc

# uncommon_plate1
## 確率
scoreboard players set ITEM_HP item_active_uncommon_p1 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_uncommon_p1 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_uncommon_p1 matches 1 store result score ITEM_HP item_value_uncommon_p1 run random value -3..10
execute if score ITEM_HP item_value_uncommon_p1 matches 0 run scoreboard players set ITEM_HP item_value_uncommon_p1 1
execute if score ITEM_HP item_active_uncommon_p1 matches 1 store result storage mibuti:uncommon_plate1_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_uncommon_p1

# uncommon_plate2
## 確率
scoreboard players set ITEM_HP item_active_uncommon_p2 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_uncommon_p2 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_uncommon_p2 matches 1 store result score ITEM_HP item_value_uncommon_p2 run random value -3..10
execute if score ITEM_HP item_value_uncommon_p2 matches 0 run scoreboard players set ITEM_HP item_value_uncommon_p2 1
execute if score ITEM_HP item_active_uncommon_p2 matches 1 store result storage mibuti:uncommon_plate2_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_uncommon_p2

# uncommon_plate3
## 確率
scoreboard players set ITEM_HP item_active_uncommon_p3 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_uncommon_p3 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_uncommon_p3 matches 1 store result score ITEM_HP item_value_uncommon_p3 run random value -3..10
execute if score ITEM_HP item_value_uncommon_p3 matches 0 run scoreboard players set ITEM_HP item_value_uncommon_p3 1
execute if score ITEM_HP item_active_uncommon_p3 matches 1 store result storage mibuti:uncommon_plate3_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_uncommon_p3

# uncommon_plate4
## 確率
scoreboard players set ITEM_HP item_active_uncommon_p4 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..4 run scoreboard players set ITEM_HP item_active_uncommon_p4 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_uncommon_p4 matches 1 store result score ITEM_HP item_value_uncommon_p4 run random value -3..10
execute if score ITEM_HP item_value_uncommon_p4 matches 0 run scoreboard players set ITEM_HP item_value_uncommon_p4 1
execute if score ITEM_HP item_active_uncommon_p4 matches 1 store result storage mibuti:uncommon_plate4_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_uncommon_p4


# rare-------------------------------------------------------------------------------------------------------------------------------------------------------------
# rare_accessories
## 確率
scoreboard players set ITEM_HP item_active_rare_acc 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_rare_acc 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_rare_acc matches 1 store result score ITEM_HP item_value_rare_acc run random value -5..15
execute if score ITEM_HP item_value_rare_acc matches 0 run scoreboard players set ITEM_HP item_value_rare_acc 1
execute if score ITEM_HP item_active_rare_acc matches 1 store result storage mibuti:rare_item_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_rare_acc

# rare_plate1
## 確率
scoreboard players set ITEM_HP item_active_rare_p1 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_rare_p1 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_rare_p1 matches 1 store result score ITEM_HP item_value_rare_p1 run random value -5..15
execute if score ITEM_HP item_value_rare_p1 matches 0 run scoreboard players set ITEM_HP item_value_rare_p1 1
execute if score ITEM_HP item_active_rare_p1 matches 1 store result storage mibuti:rare_plate1_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_rare_p1

# rare_plate2
## 確率
scoreboard players set ITEM_HP item_active_rare_p2 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_rare_p2 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_rare_p2 matches 1 store result score ITEM_HP item_value_rare_p2 run random value -5..15
execute if score ITEM_HP item_value_rare_p2 matches 0 run scoreboard players set ITEM_HP item_value_rare_p2 1
execute if score ITEM_HP item_active_rare_p2 matches 1 store result storage mibuti:rare_plate2_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_rare_p2

# rare_plate3
## 確率
scoreboard players set ITEM_HP item_active_rare_p3 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_rare_p3 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_rare_p3 matches 1 store result score ITEM_HP item_value_rare_p3 run random value -5..15
execute if score ITEM_HP item_value_rare_p3 matches 0 run scoreboard players set ITEM_HP item_value_rare_p3 1
execute if score ITEM_HP item_active_rare_p3 matches 1 store result storage mibuti:rare_plate3_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_rare_p3

# rare_plate4
## 確率
scoreboard players set ITEM_HP item_active_rare_p4 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_rare_p4 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_rare_p4 matches 1 store result score ITEM_HP item_value_rare_p4 run random value -5..15
execute if score ITEM_HP item_value_rare_p4 matches 0 run scoreboard players set ITEM_HP item_value_rare_p4 1
execute if score ITEM_HP item_active_rare_p4 matches 1 store result storage mibuti:rare_plate4_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_rare_p4


# epic-------------------------------------------------------------------------------------------------------------------------------------------------------------
# epic_accessories
## 確率
scoreboard players set ITEM_HP item_active_epic_acc 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_epic_acc 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_epic_acc matches 1 store result score ITEM_HP item_value_epic_acc run random value -7..20
execute if score ITEM_HP item_value_epic_acc matches 0 run scoreboard players set ITEM_HP item_value_epic_acc 1
execute if score ITEM_HP item_active_epic_acc matches 1 store result storage mibuti:epic_item_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_epic_acc

# epic_plate1
## 確率
scoreboard players set ITEM_HP item_active_epic_p1 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_epic_p1 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_epic_p1 matches 1 store result score ITEM_HP item_value_epic_p1 run random value -7..20
execute if score ITEM_HP item_value_epic_p1 matches 0 run scoreboard players set ITEM_HP item_value_epic_p1 1
execute if score ITEM_HP item_active_epic_p1 matches 1 store result storage mibuti:epic_plate1_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_epic_p1

# epic_plate2
## 確率
scoreboard players set ITEM_HP item_active_epic_p2 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_epic_p2 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_epic_p2 matches 1 store result score ITEM_HP item_value_epic_p2 run random value -7..20
execute if score ITEM_HP item_value_epic_p2 matches 0 run scoreboard players set ITEM_HP item_value_epic_p2 1
execute if score ITEM_HP item_active_epic_p2 matches 1 store result storage mibuti:epic_plate2_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_epic_p2

# epic_plate3
## 確率
scoreboard players set ITEM_HP item_active_epic_p3 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_epic_p3 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_epic_p3 matches 1 store result score ITEM_HP item_value_epic_p3 run random value -7..20
execute if score ITEM_HP item_value_epic_p3 matches 0 run scoreboard players set ITEM_HP item_value_epic_p3 1
execute if score ITEM_HP item_active_epic_p3 matches 1 store result storage mibuti:epic_plate3_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_epic_p3

# epic_plate4
## 確率
scoreboard players set ITEM_HP item_active_epic_p4 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..5 run scoreboard players set ITEM_HP item_active_epic_p4 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_epic_p4 matches 1 store result score ITEM_HP item_value_epic_p4 run random value -7..20
execute if score ITEM_HP item_value_epic_p4 matches 0 run scoreboard players set ITEM_HP item_value_epic_p4 1
execute if score ITEM_HP item_active_epic_p4 matches 1 store result storage mibuti:epic_plate4_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_epic_p4

# legendary-------------------------------------------------------------------------------------------------------------------------------------------------------------
# legendary_accessories
## 確率
scoreboard players set ITEM_HP item_active_legendary_acc 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_legendary_acc 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_legendary_acc matches 1 store result score ITEM_HP item_value_legendary_acc run random value -9..25
execute if score ITEM_HP item_value_legendary_acc matches 0 run scoreboard players set ITEM_HP item_value_legendary_acc 1
execute if score ITEM_HP item_active_legendary_acc matches 1 store result storage mibuti:legendary_item_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_legendary_acc

# legendary_plate1
## 確率
scoreboard players set ITEM_HP item_active_legendary_p1 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_legendary_p1 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_legendary_p1 matches 1 store result score ITEM_HP item_value_legendary_p1 run random value -9..25
execute if score ITEM_HP item_value_legendary_p1 matches 0 run scoreboard players set ITEM_HP item_value_legendary_p1 1
execute if score ITEM_HP item_active_legendary_p1 matches 1 store result storage mibuti:legendary_plate1_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_legendary_p1

# legendary_plate2
## 確率
scoreboard players set ITEM_HP item_active_legendary_p2 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_legendary_p2 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_legendary_p2 matches 1 store result score ITEM_HP item_value_legendary_p2 run random value -9..25
execute if score ITEM_HP item_value_legendary_p2 matches 0 run scoreboard players set ITEM_HP item_value_legendary_p2 1
execute if score ITEM_HP item_active_legendary_p2 matches 1 store result storage mibuti:legendary_plate2_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_legendary_p2

# legendary_plate3
## 確率
scoreboard players set ITEM_HP item_active_legendary_p3 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_legendary_p3 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_legendary_p3 matches 1 store result score ITEM_HP item_value_legendary_p3 run random value -9..25
execute if score ITEM_HP item_value_legendary_p3 matches 0 run scoreboard players set ITEM_HP item_value_legendary_p3 1
execute if score ITEM_HP item_active_legendary_p3 matches 1 store result storage mibuti:legendary_plate3_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_legendary_p3

# legendary_plate4
## 確率
scoreboard players set ITEM_HP item_active_legendary_p4 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_legendary_p4 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_legendary_p4 matches 1 store result score ITEM_HP item_value_legendary_p4 run random value -9..25
execute if score ITEM_HP item_value_legendary_p4 matches 0 run scoreboard players set ITEM_HP item_value_legendary_p4 1
execute if score ITEM_HP item_active_legendary_p4 matches 1 store result storage mibuti:legendary_plate4_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_legendary_p4


# godes-------------------------------------------------------------------------------------------------------------------------------------------------------------
# godes_accessories
## 確率
scoreboard players set ITEM_HP item_active_godes_acc 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_godes_acc 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_godes_acc matches 1 store result score ITEM_HP item_value_godes_acc run random value -9..30
execute if score ITEM_HP item_value_godes_acc matches 0 run scoreboard players set ITEM_HP item_value_godes_acc 1
execute if score ITEM_HP item_active_godes_acc matches 1 store result storage mibuti:godes_item_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_godes_acc

# godes_plate1
## 確率
scoreboard players set ITEM_HP item_active_godes_p1 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_godes_p1 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_godes_p1 matches 1 store result score ITEM_HP item_value_godes_p1 run random value -9..30
execute if score ITEM_HP item_value_godes_p1 matches 0 run scoreboard players set ITEM_HP item_value_godes_p1 1
execute if score ITEM_HP item_active_godes_p1 matches 1 store result storage mibuti:godes_plate1_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_godes_p1

# godes_plate2
## 確率
scoreboard players set ITEM_HP item_active_godes_p2 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_godes_p2 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_godes_p2 matches 1 store result score ITEM_HP item_value_godes_p2 run random value -9..30
execute if score ITEM_HP item_value_godes_p2 matches 0 run scoreboard players set ITEM_HP item_value_godes_p2 1
execute if score ITEM_HP item_active_godes_p2 matches 1 store result storage mibuti:godes_plate2_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_godes_p2

# godes_plate3
## 確率
scoreboard players set ITEM_HP item_active_godes_p3 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_godes_p3 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_godes_p3 matches 1 store result score ITEM_HP item_value_godes_p3 run random value -9..30
execute if score ITEM_HP item_value_godes_p3 matches 0 run scoreboard players set ITEM_HP item_value_godes_p3 1
execute if score ITEM_HP item_active_godes_p3 matches 1 store result storage mibuti:godes_plate3_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_godes_p3

# godes_plate4
## 確率
scoreboard players set ITEM_HP item_active_godes_p4 0
execute store result score ITEM_HP random_rand run random value 1..10
execute if score ITEM_HP random_rand matches ..6 run scoreboard players set ITEM_HP item_active_godes_p4 1
## 実数値(0は使えないため1に変更)
execute if score ITEM_HP item_active_godes_p4 matches 1 store result score ITEM_HP item_value_godes_p4 run random value -9..30
execute if score ITEM_HP item_value_godes_p4 matches 0 run scoreboard players set ITEM_HP item_value_godes_p4 1
execute if score ITEM_HP item_active_godes_p4 matches 1 store result storage mibuti:godes_plate4_random ITEM_HP int 1 run scoreboard players get ITEM_HP item_value_godes_p4