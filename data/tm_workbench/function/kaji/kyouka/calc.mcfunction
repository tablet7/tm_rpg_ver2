#> tm_workbench:kaji/kyouka/calc

# 強化に要る素材の数（#n<段階>・#gn<段階>）と gold（#gold）を計算する（kaji_tmp）。スコアだけで計算する（マクロ・NBT なし）
# 入力: #state・#lv・#kk kaji_tmp（kaji/fake）。#state が 2 でなければ全部 0
# kaji/refresh/kyouka・kaji/kyouka/do から呼ばれる

# 素材の数（md/gui_md/materials.md の式）: 段 t ＝ 強化回数 ÷ 10（最大 5）、段の中の回数 j（最大 9）、A ＝ 4 ＋ Lv ÷ 8
# 段階 g（1 〜 t ＋ 1）の数 ＝ A ×（1 ＋ 2j）×（t ＋ 2 − g）、宝石系は 0.6 倍（切り上げ）。gold ＝（Lv × 10 ＋ 強化回数 × 20）×（t ＋ 1）
scoreboard players set #n1 kaji_tmp 0
scoreboard players set #n2 kaji_tmp 0
scoreboard players set #n3 kaji_tmp 0
scoreboard players set #n4 kaji_tmp 0
scoreboard players set #n5 kaji_tmp 0
scoreboard players set #n6 kaji_tmp 0
scoreboard players set #gn1 kaji_tmp 0
scoreboard players set #gn2 kaji_tmp 0
scoreboard players set #gn3 kaji_tmp 0
scoreboard players set #gn4 kaji_tmp 0
scoreboard players set #gn5 kaji_tmp 0
scoreboard players set #gn6 kaji_tmp 0
scoreboard players set #gold kaji_tmp 0
scoreboard players set #t kaji_tmp 0
scoreboard players set #j kaji_tmp 0
scoreboard players operation #lv1 kaji_tmp = #lv kaji_tmp
scoreboard players add #lv1 kaji_tmp 1
execute unless score #state kaji_tmp matches 2 run return 0

scoreboard players operation #t kaji_tmp = #kk kaji_tmp
scoreboard players operation #t kaji_tmp /= #10 kaji_tmp
scoreboard players operation #j kaji_tmp = #kk kaji_tmp
scoreboard players operation #j kaji_tmp %= #10 kaji_tmp
execute if score #t kaji_tmp matches 6.. run scoreboard players set #j kaji_tmp 9
execute if score #t kaji_tmp matches 6.. run scoreboard players set #t kaji_tmp 5
# base ＝ A ×（1 ＋ 2j）
scoreboard players operation #a kaji_tmp = #lv kaji_tmp
scoreboard players operation #a kaji_tmp /= #8 kaji_tmp
scoreboard players add #a kaji_tmp 4
scoreboard players operation #base kaji_tmp = #j kaji_tmp
scoreboard players operation #base kaji_tmp *= #2 kaji_tmp
scoreboard players add #base kaji_tmp 1
scoreboard players operation #base kaji_tmp *= #a kaji_tmp
# 段階 1: m1 ＝ t ＋ 2 − 1（1 以上のときだけ使う）
scoreboard players operation #m1 kaji_tmp = #t kaji_tmp
scoreboard players add #m1 kaji_tmp 1
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n1 kaji_tmp = #base kaji_tmp
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n1 kaji_tmp *= #m1 kaji_tmp
scoreboard players operation #gn1 kaji_tmp = #n1 kaji_tmp
scoreboard players operation #gn1 kaji_tmp *= #6 kaji_tmp
execute if score #gn1 kaji_tmp matches 1.. run scoreboard players add #gn1 kaji_tmp 9
scoreboard players operation #gn1 kaji_tmp /= #10 kaji_tmp
# 段階 2: m1 ＝ t ＋ 2 − 2（1 以上のときだけ使う）
scoreboard players operation #m1 kaji_tmp = #t kaji_tmp
# （t ＋ 0）
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n2 kaji_tmp = #base kaji_tmp
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n2 kaji_tmp *= #m1 kaji_tmp
scoreboard players operation #gn2 kaji_tmp = #n2 kaji_tmp
scoreboard players operation #gn2 kaji_tmp *= #6 kaji_tmp
execute if score #gn2 kaji_tmp matches 1.. run scoreboard players add #gn2 kaji_tmp 9
scoreboard players operation #gn2 kaji_tmp /= #10 kaji_tmp
# 段階 3: m1 ＝ t ＋ 2 − 3（1 以上のときだけ使う）
scoreboard players operation #m1 kaji_tmp = #t kaji_tmp
scoreboard players remove #m1 kaji_tmp 1
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n3 kaji_tmp = #base kaji_tmp
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n3 kaji_tmp *= #m1 kaji_tmp
scoreboard players operation #gn3 kaji_tmp = #n3 kaji_tmp
scoreboard players operation #gn3 kaji_tmp *= #6 kaji_tmp
execute if score #gn3 kaji_tmp matches 1.. run scoreboard players add #gn3 kaji_tmp 9
scoreboard players operation #gn3 kaji_tmp /= #10 kaji_tmp
# 段階 4: m1 ＝ t ＋ 2 − 4（1 以上のときだけ使う）
scoreboard players operation #m1 kaji_tmp = #t kaji_tmp
scoreboard players remove #m1 kaji_tmp 2
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n4 kaji_tmp = #base kaji_tmp
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n4 kaji_tmp *= #m1 kaji_tmp
scoreboard players operation #gn4 kaji_tmp = #n4 kaji_tmp
scoreboard players operation #gn4 kaji_tmp *= #6 kaji_tmp
execute if score #gn4 kaji_tmp matches 1.. run scoreboard players add #gn4 kaji_tmp 9
scoreboard players operation #gn4 kaji_tmp /= #10 kaji_tmp
# 段階 5: m1 ＝ t ＋ 2 − 5（1 以上のときだけ使う）
scoreboard players operation #m1 kaji_tmp = #t kaji_tmp
scoreboard players remove #m1 kaji_tmp 3
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n5 kaji_tmp = #base kaji_tmp
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n5 kaji_tmp *= #m1 kaji_tmp
scoreboard players operation #gn5 kaji_tmp = #n5 kaji_tmp
scoreboard players operation #gn5 kaji_tmp *= #6 kaji_tmp
execute if score #gn5 kaji_tmp matches 1.. run scoreboard players add #gn5 kaji_tmp 9
scoreboard players operation #gn5 kaji_tmp /= #10 kaji_tmp
# 段階 6: m1 ＝ t ＋ 2 − 6（1 以上のときだけ使う）
scoreboard players operation #m1 kaji_tmp = #t kaji_tmp
scoreboard players remove #m1 kaji_tmp 4
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n6 kaji_tmp = #base kaji_tmp
execute if score #m1 kaji_tmp matches 1.. run scoreboard players operation #n6 kaji_tmp *= #m1 kaji_tmp
scoreboard players operation #gn6 kaji_tmp = #n6 kaji_tmp
scoreboard players operation #gn6 kaji_tmp *= #6 kaji_tmp
execute if score #gn6 kaji_tmp matches 1.. run scoreboard players add #gn6 kaji_tmp 9
scoreboard players operation #gn6 kaji_tmp /= #10 kaji_tmp
# gold
scoreboard players operation #gold kaji_tmp = #lv kaji_tmp
scoreboard players operation #gold kaji_tmp *= #10 kaji_tmp
scoreboard players operation #d kaji_tmp = #kk kaji_tmp
scoreboard players operation #d kaji_tmp *= #20 kaji_tmp
scoreboard players operation #gold kaji_tmp += #d kaji_tmp
scoreboard players operation #d kaji_tmp = #t kaji_tmp
scoreboard players add #d kaji_tmp 1
scoreboard players operation #gold kaji_tmp *= #d kaji_tmp
