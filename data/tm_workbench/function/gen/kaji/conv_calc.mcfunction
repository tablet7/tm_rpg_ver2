#> tm_workbench:gen/kaji/conv_calc

# 素材の変換: 段階ごとに一度に変える数 #cvq<段階>・下の段階に増える数 #cvp<段階>・変えられるか #cvok<段階>（1 ＝ 変えられる）を計算する
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# 入力: #cvmode・#cvh<段階> kaji_tmp（gen/kaji/conv_have）。kaji/refresh/conv・kaji/conv/grade から

# 一度に変える数 #cvn（全部は 0。段階ごとに持っている数を使う）
scoreboard players set #cvn kaji_tmp 1
execute if score #cvmode kaji_tmp matches 2 run scoreboard players set #cvn kaji_tmp 10
execute if score #cvmode kaji_tmp matches 3 run scoreboard players set #cvn kaji_tmp 100
execute if score #cvmode kaji_tmp matches 4 run scoreboard players set #cvn kaji_tmp 1000
execute if score #cvmode kaji_tmp matches 5 run scoreboard players set #cvn kaji_tmp 0
# 段階 2（緑）→ 段階 1
scoreboard players operation #cvq2 kaji_tmp = #cvn kaji_tmp
execute if score #cvmode kaji_tmp matches 5 run scoreboard players operation #cvq2 kaji_tmp = #cvh2 kaji_tmp
# 下の段階が 2147483647 を超えないように、（2147483647 − 下の段階の数）÷ 10 までにする
scoreboard players set #cvroom kaji_tmp 2147483647
scoreboard players operation #cvroom kaji_tmp -= #cvh1 kaji_tmp
scoreboard players operation #cvroom kaji_tmp /= #10 kaji_tmp
execute if score #cvq2 kaji_tmp > #cvroom kaji_tmp run scoreboard players operation #cvq2 kaji_tmp = #cvroom kaji_tmp
scoreboard players operation #cvp2 kaji_tmp = #cvq2 kaji_tmp
scoreboard players operation #cvp2 kaji_tmp *= #10 kaji_tmp
scoreboard players set #cvok2 kaji_tmp 0
execute if score #cvq2 kaji_tmp matches 1.. if score #cvh2 kaji_tmp >= #cvq2 kaji_tmp run scoreboard players set #cvok2 kaji_tmp 1
# 段階 3（青）→ 段階 2
scoreboard players operation #cvq3 kaji_tmp = #cvn kaji_tmp
execute if score #cvmode kaji_tmp matches 5 run scoreboard players operation #cvq3 kaji_tmp = #cvh3 kaji_tmp
# 下の段階が 2147483647 を超えないように、（2147483647 − 下の段階の数）÷ 10 までにする
scoreboard players set #cvroom kaji_tmp 2147483647
scoreboard players operation #cvroom kaji_tmp -= #cvh2 kaji_tmp
scoreboard players operation #cvroom kaji_tmp /= #10 kaji_tmp
execute if score #cvq3 kaji_tmp > #cvroom kaji_tmp run scoreboard players operation #cvq3 kaji_tmp = #cvroom kaji_tmp
scoreboard players operation #cvp3 kaji_tmp = #cvq3 kaji_tmp
scoreboard players operation #cvp3 kaji_tmp *= #10 kaji_tmp
scoreboard players set #cvok3 kaji_tmp 0
execute if score #cvq3 kaji_tmp matches 1.. if score #cvh3 kaji_tmp >= #cvq3 kaji_tmp run scoreboard players set #cvok3 kaji_tmp 1
# 段階 4（紫）→ 段階 3
scoreboard players operation #cvq4 kaji_tmp = #cvn kaji_tmp
execute if score #cvmode kaji_tmp matches 5 run scoreboard players operation #cvq4 kaji_tmp = #cvh4 kaji_tmp
# 下の段階が 2147483647 を超えないように、（2147483647 − 下の段階の数）÷ 10 までにする
scoreboard players set #cvroom kaji_tmp 2147483647
scoreboard players operation #cvroom kaji_tmp -= #cvh3 kaji_tmp
scoreboard players operation #cvroom kaji_tmp /= #10 kaji_tmp
execute if score #cvq4 kaji_tmp > #cvroom kaji_tmp run scoreboard players operation #cvq4 kaji_tmp = #cvroom kaji_tmp
scoreboard players operation #cvp4 kaji_tmp = #cvq4 kaji_tmp
scoreboard players operation #cvp4 kaji_tmp *= #10 kaji_tmp
scoreboard players set #cvok4 kaji_tmp 0
execute if score #cvq4 kaji_tmp matches 1.. if score #cvh4 kaji_tmp >= #cvq4 kaji_tmp run scoreboard players set #cvok4 kaji_tmp 1
# 段階 5（金）→ 段階 4
scoreboard players operation #cvq5 kaji_tmp = #cvn kaji_tmp
execute if score #cvmode kaji_tmp matches 5 run scoreboard players operation #cvq5 kaji_tmp = #cvh5 kaji_tmp
# 下の段階が 2147483647 を超えないように、（2147483647 − 下の段階の数）÷ 10 までにする
scoreboard players set #cvroom kaji_tmp 2147483647
scoreboard players operation #cvroom kaji_tmp -= #cvh4 kaji_tmp
scoreboard players operation #cvroom kaji_tmp /= #10 kaji_tmp
execute if score #cvq5 kaji_tmp > #cvroom kaji_tmp run scoreboard players operation #cvq5 kaji_tmp = #cvroom kaji_tmp
scoreboard players operation #cvp5 kaji_tmp = #cvq5 kaji_tmp
scoreboard players operation #cvp5 kaji_tmp *= #10 kaji_tmp
scoreboard players set #cvok5 kaji_tmp 0
execute if score #cvq5 kaji_tmp matches 1.. if score #cvh5 kaji_tmp >= #cvq5 kaji_tmp run scoreboard players set #cvok5 kaji_tmp 1
# 段階 6（赤）→ 段階 5
scoreboard players operation #cvq6 kaji_tmp = #cvn kaji_tmp
execute if score #cvmode kaji_tmp matches 5 run scoreboard players operation #cvq6 kaji_tmp = #cvh6 kaji_tmp
# 下の段階が 2147483647 を超えないように、（2147483647 − 下の段階の数）÷ 10 までにする
scoreboard players set #cvroom kaji_tmp 2147483647
scoreboard players operation #cvroom kaji_tmp -= #cvh5 kaji_tmp
scoreboard players operation #cvroom kaji_tmp /= #10 kaji_tmp
execute if score #cvq6 kaji_tmp > #cvroom kaji_tmp run scoreboard players operation #cvq6 kaji_tmp = #cvroom kaji_tmp
scoreboard players operation #cvp6 kaji_tmp = #cvq6 kaji_tmp
scoreboard players operation #cvp6 kaji_tmp *= #10 kaji_tmp
scoreboard players set #cvok6 kaji_tmp 0
execute if score #cvq6 kaji_tmp matches 1.. if score #cvh6 kaji_tmp >= #cvq6 kaji_tmp run scoreboard players set #cvok6 kaji_tmp 1
