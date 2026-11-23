#> test_weapon_motion:katana/tick

# 刀をメインハンドに持っているプレイヤーの毎 tick の処理。test_weapon_motion:tick から呼ばれる
# twm_kt_s（構え）: 0 = 納刀状態、1 = 抜刀状態
# twm_kt（動き）: 0 = 構え、1 = 技の途中、2 = 次の右クリックを待つ、3 = 構えに戻る
# コマ（twm_kt_f）: 0 = 納刀の構え、1〜6・7〜14・15〜20・21〜32 = 納刀の1〜4撃目、33 = 抜刀の構え、
#   34〜39・40〜45・46〜51・52〜61・62〜73 = 抜刀の1〜5撃目、
#   77〜・84〜 = 納刀の1・2撃目のあと構えに戻る、91〜・98〜・105〜・112〜 = 抜刀の1〜4撃目のあと構えに戻る
# コマの番号は md/weapon_md/test_weapon_motion/build_katana.py の S_HITS・B_HITS・S_RETURNS・B_RETURNS と同じ。
# コマの番号が変わったら katana/attack/tick・katana/attack/advance・katana/back/start・katana/back/tick もそろえて直す
# 抜刀状態は、5撃目（納刀斬り）を打つまで納刀状態に戻らない（放っておいても納めない）
# 中で twm_kt が変わっても同じ tick に次の状態の処理が動かないように、最初の状態を #sc に写して分ける
# @s ＝ プレイヤー（at @s）

# 持つ枠が変わったら（同じ種類の別の武器へ持ち替えたときも）、持ち始めと同じにする
execute if function test_weapon_motion:hold/slot_changed run tag @s remove twm_kt_hold
# 持ち始め: 前に持っていたときの構え（納刀・抜刀）から始める
execute if entity @s[tag=!twm_kt_hold] run return run function test_weapon_motion:katana/start

# 右クリック（歪んだキノコ付きの棒を使った）を #use に受け取る。回数の消去は test_weapon_motion:tick の最後で行う
scoreboard players set #use twm_tmp 0
execute if score @s twm_use matches 1.. run scoreboard players set #use twm_tmp 1

# シフト＋右クリックは戦技。sengi/common/use が #use を 0 にするので、攻撃の右クリックとしては数えない
# 納刀状態は戦技1（custom_data の sengi）、抜刀状態は戦技2（sengi2）
scoreboard players set #sengi_slot twm_tmp 1
execute if score @s twm_kt_s matches 1 run scoreboard players set #sengi_slot twm_tmp 2
execute if score #use twm_tmp matches 1 if predicate test_weapon_motion:sneaking run function test_weapon_motion:sengi/common/use

scoreboard players operation #sc twm_tmp = @s twm_kt
# 納刀斬りのあと（twm_kt_c が 1 以上）は、構えで右クリックしても技を始めない（押した分は覚えない）
execute if score #sc twm_tmp matches 0 if score #use twm_tmp matches 1 unless score @s twm_kt_c matches 1.. run function test_weapon_motion:katana/attack/start
execute if score #sc twm_tmp matches 1 run function test_weapon_motion:katana/attack/tick
execute if score #sc twm_tmp matches 2 run function test_weapon_motion:katana/wait/tick
execute if score #sc twm_tmp matches 3 run function test_weapon_motion:katana/back/tick

# 納刀斬りのあとの受付停止の残りを減らす（刀を持っている間だけ数える）
execute if score @s twm_kt_c matches 1.. run scoreboard players remove @s twm_kt_c 1
