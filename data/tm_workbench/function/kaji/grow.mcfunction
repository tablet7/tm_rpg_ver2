#> tm_workbench:kaji/grow

# 値 #v を ＋#lo〜（#lo ＋ #span − 1）％ 伸ばす（最低 ＋1）。kaji/lv_up/ から呼ばれる
# 入力・出力: #v kaji_tmp。#lo・#span kaji_tmp（例 5〜10％ なら #lo 5・#span 6）
# random value の範囲に変数を使えないので、0..2147483646 の結果を %= で範囲にする（マクロなし）

execute store result score #r kaji_tmp run random value 0..2147483646
scoreboard players operation #r kaji_tmp %= #span kaji_tmp
scoreboard players operation #r kaji_tmp += #lo kaji_tmp
scoreboard players operation #d kaji_tmp = #v kaji_tmp
scoreboard players operation #d kaji_tmp *= #r kaji_tmp
scoreboard players operation #d kaji_tmp /= #100 kaji_tmp
execute if score #d kaji_tmp matches ..0 run scoreboard players set #d kaji_tmp 1
scoreboard players operation #v kaji_tmp += #d kaji_tmp
