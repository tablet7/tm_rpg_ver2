#> test_weapon_motion:scythe/tick

# 大鎌をメインハンドに持っているプレイヤーの毎 tick の処理。test_weapon_motion:tick から呼ばれる
# twm_sc: 0 = 構え、1 = 振り下ろし（1〜12 コマ。12 のまま引き裂きを待つ）、2 = 引き裂き（13〜20 コマ）、3 = 引き裂いたあと止まる、4 = 構えに戻る（21〜29・31〜39 コマ）
# 中で twm_sc が変わっても同じ tick に次の状態の処理が動かないように、最初の状態を #sc に写して分ける
# @s ＝ プレイヤー（at @s）

# 持つ枠が変わったら（同じ種類の別の武器へ持ち替えたときも）、持ち始めと同じにする
execute if function test_weapon_motion:hold/slot_changed run tag @s remove twm_sc_hold
# 持ち始め: 構え（0 コマ）から始める
execute if entity @s[tag=!twm_sc_hold] run return run function test_weapon_motion:scythe/start

# 右クリック（歪んだキノコ付きの棒を使った）を #use に受け取る。回数の消去は test_weapon_motion:tick の最後で行う
scoreboard players set #use twm_tmp 0
execute if score @s twm_use matches 1.. run scoreboard players set #use twm_tmp 1

# シフト＋右クリックは戦技1（custom_data の sengi）。sengi/common/use が #use を 0 にするので、攻撃の右クリックとしては数えない
scoreboard players set #sengi_slot twm_tmp 1
execute if score #use twm_tmp matches 1 if predicate test_weapon_motion:sneaking run function test_weapon_motion:sengi/common/use

scoreboard players operation #sc twm_tmp = @s twm_sc
execute if score #sc twm_tmp matches 0 if score #use twm_tmp matches 1 run function test_weapon_motion:scythe/swing/start
execute if score #sc twm_tmp matches 1 run function test_weapon_motion:scythe/swing/tick
execute if score #sc twm_tmp matches 2 run function test_weapon_motion:scythe/tear/tick
execute if score #sc twm_tmp matches 3 run function test_weapon_motion:scythe/tear/after
execute if score #sc twm_tmp matches 4 run function test_weapon_motion:scythe/back/tick
