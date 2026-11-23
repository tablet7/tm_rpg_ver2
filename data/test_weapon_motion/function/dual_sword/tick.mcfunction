#> test_weapon_motion:dual_sword/tick

# 二刀流をメインハンドに持っているプレイヤーの毎 tick の処理。test_weapon_motion:tick から呼ばれる
# twm_ds: 0 = 構え、1 = 技の途中、2 = 次の右クリックを待つ、3 = 構えに戻る
# コマ（twm_ds_f）: 0 = 構え、1〜6・7〜11・12〜16・17〜23・24〜29・30〜41 = 1〜6撃目、42〜・49〜・56〜・63〜・71〜・79〜 = 1〜6撃目のあと構えに戻る
# コマの番号は md/weapon_md/test_weapon_motion/build_dual_sword.py の HITS・RETURNS と同じ。モーションを作り直してコマの番号が変わったら、
# dual_sword/attack/tick（技の終わり 6・11・16・23・29・41）・dual_sword/attack/advance（当たる 3・9・15・20・26・36 と振る音）・
# dual_sword/back/start・dual_sword/back/tick もそろえて直す
# 中で twm_ds が変わっても同じ tick に次の状態の処理が動かないように、最初の状態を #sc に写して分ける
# @s ＝ プレイヤー（at @s）

# 持つ枠が変わったら（同じ種類の別の武器へ持ち替えたときも）、持ち始めと同じにする
execute if function test_weapon_motion:hold/slot_changed run tag @s remove twm_ds_hold
# 持ち始め: 構え（0 コマ）から始める
execute if entity @s[tag=!twm_ds_hold] run return run function test_weapon_motion:dual_sword/start

# 右クリック（歪んだキノコ付きの棒を使った）を #use に受け取る。回数の消去は test_weapon_motion:tick の最後で行う
scoreboard players set #use twm_tmp 0
execute if score @s twm_use matches 1.. run scoreboard players set #use twm_tmp 1

# シフト＋右クリックは戦技1（custom_data の sengi）。sengi/common/use が #use を 0 にするので、攻撃の右クリックとしては数えない
scoreboard players set #sengi_slot twm_tmp 1
execute if score #use twm_tmp matches 1 if predicate test_weapon_motion:sneaking run function test_weapon_motion:sengi/common/use

scoreboard players operation #sc twm_tmp = @s twm_ds
execute if score #sc twm_tmp matches 0 if score #use twm_tmp matches 1 run function test_weapon_motion:dual_sword/attack/start
execute if score #sc twm_tmp matches 1 run function test_weapon_motion:dual_sword/attack/tick
execute if score #sc twm_tmp matches 2 run function test_weapon_motion:dual_sword/wait/tick
execute if score #sc twm_tmp matches 3 run function test_weapon_motion:dual_sword/back/tick
